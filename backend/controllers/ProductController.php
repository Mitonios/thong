<?php
/**
 * Created by PhpStorm.
 * User: Mitonios-Tofu
 * Date: 2/19/2016
 * Time: 2:30 PM
 */

namespace backend\controllers;

use common\models\ProductImage;
use Yii;
use common\models\Product;
use yii\helpers\Url;
use yii\web\HttpException;
use yii\web\UploadedFile;

class ProductController extends BackendController
{


    public function beforeAction($action)
    {
        if (in_array($action->id, ['upload-image', 'delete-image']))
            $this->enableCsrfValidation = false;
        return parent::beforeAction($action); // TODO: Change the autogenerated stub
    }

    public function actionList()
    {
        //$key = $this->id . $this->action->id;
        $query = Product::find();
        if (Yii::$app->request->get("filter")) {
            $filter = Yii::$app->request->get("filter");
            $query->andFilterWhere(['like', 'name', $filter['name']]);
            $query->andFilterWhere(['like', 'code', $filter['code']]);
            $query->andFilterWhere(['>=', 'price_sale', $filter['price_sale_0']]);
            $query->andFilterWhere(['<=', 'price_sale', $filter['price_sale_1']]);
            $query->andFilterWhere(['category_id' => $filter['category_id']]);
        }

        $models = $query->orderBy(['id' => 'DESC'])->all();
        return $this->render("list", ['models' => $models]);
    }

    public function actionCreate()
    {
        $model = new Product();

        $model->category_id = \Yii::$app->request->get('category_id');

        if ($model->load(\Yii::$app->request->post())) {
            $model->avatarFile = UploadedFile::getInstance($model, 'avatarFile');
            if ($model->save() && $model->upload()) {
                Yii::$app->session->setFlash("success", "Tạo sản phẩm thành công");
                switch (\Yii::$app->request->post('redirect')) {
                    case 'update':
                        $this->redirectUrl = Url::to(['update', 'id' => $model->id]);
                        break;
                    default:
                        $this->redirectUrl = Url::to(['create', 'category_id' => $model->category_id]);
                        break;
                }
                return $this->redirect($this->redirectUrl);
            }
        }

        return $this->render("create", ['model' => $model]);
    }

    public function actionUpdate($id)
    {
        /**
         * @var $model Product
         */
        $model = Product::findOne($id);

        if ($model->load(\Yii::$app->request->post())) {
            $model->avatarFile = UploadedFile::getInstance($model, 'avatarFile');
            if ($model->save() && $model->upload()) {
                switch (\Yii::$app->request->post('redirect')) {
                    case "create":
                        $this->redirectUrl = Url::to(['create', 'category_id' => $model->category_id]);
                        break;
                }
                Yii::$app->session->setFlash("success", "Cập nhật thông tin sản phẩm thành công");
                return $this->redirect($this->redirectUrl);
            }
        }
        return $this->render("update", ['model' => $model]);
    }

    public function actionUploadImage($id)
    {
        $path = '/images/product/' . $id;
        $file = date("U") . "_" . $_FILES['file']['name'];
        $uploadPath = Yii::$app->params['uploadPath'] . $path;
        if (!is_dir($uploadPath))
            mkdir($uploadPath, 0777, true);

        $tempFile = $_FILES['file']['tmp_name'];
        $targetFile = $uploadPath . '/' . $file;

        if (move_uploaded_file($tempFile, $targetFile)) {
            $model = new ProductImage();
            $model->product_id = $id;
            $model->url = $path . "/" . $file;
            $model->save(false);
            echo $targetFile;
        } else {
            throw new HttpException(404, 'The requested page does not exist.');
        }
    }

    public function actionDeleteImage($id)
    {
        /**
         * @var $model ProductImage
         */
        $model = ProductImage::findOne($id);
        $model->delete();
    }

    public function actionDelete($id)
    {
        /**
         * @var $model Product
         */
        $model = Product::findOne($id);
        $model->delete();
        Yii::$app->session->setFlash("success", "Xóa sản phẩm " . $model->name . ' thành công');
        return $this->redirect(\Yii::$app->request->getReferrer());
    }

    public function actionStatus($id)
    {
        /**
         * @var $model Product
         */
        $model = Product::findOne($id);
        $model->status = Yii::$app->request->get('v');
        $model->update();
        Yii::$app->session->setFlash("success", "Cập nhật sản phẩm " . $model->name . ' thành công');
        return $this->redirect(\Yii::$app->request->getReferrer());
    }
}