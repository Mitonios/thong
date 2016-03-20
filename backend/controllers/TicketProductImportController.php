<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2/24/2016
 * Time: 6:42 PM
 */

namespace backend\controllers;

use common\models\Product;
use common\models\RltProductTicketProductImport;
use common\models\TicketProductImport;
use Yii;
use yii\helpers\Json;
use yii\helpers\Url;
use yii\web\HttpException;

class TicketProductImportController extends BackendController
{
    public function actionRemoveItem($id)
    {
        RltProductTicketProductImport::findOne($id)->delete();
    }

    public function actionView($id)
    {
        /**
         * @var $model TicketProductImport
         * @var $items RltProductTicketProductImport[]
         */
        $model = TicketProductImport::findOne($id);
        $items = $model->getItems();
        return $this->renderPartial("view", ['model' => $model, 'items' => $items]);
    }

    public function actionIndex()
    {
        $query = TicketProductImport::find();
        if (Yii::$app->request->get("filter")) {
            /*$filter = Yii::$app->request->get("filter");
            $query->andFilterWhere(['like', 'sale_date', $filter['sale_date']]);
            $query->andFilterWhere(['like', 'code', $filter['code']]);
            $query->andFilterWhere(['>=', 'price_sale', $filter['price_sale_0']]);
            $query->andFilterWhere(['<=', 'price_sale', $filter['price_sale_1']]);
            $query->andFilterWhere(['category_id' => $filter['category_id']]);*/
        }
        $query->andFilterWhere(["<>", 'status', TicketProductImport::STATUS_DELETE]);
        $query->addOrderBy("status ASC");
        $query->addOrderBy("id DESC");
        $models = $query->all();
        return $this->render("index", ['models' => $models]);
    }

    public function actionCreate()
    {
        $model = new TicketProductImport();
        $model->date_import = date("d/m/Y");
        if (Yii::$app->request->post('Product')) {
            $model->status = (int)Yii::$app->request->post('status');
            if ($model->status == $model::STATUS_DELETE)
                $this->redirectUrl = Url::to(['index']);
            else
                if ($model->save()) {
                    $model = self::afterSave($model);
                    Yii::$app->session->setFlash("success", "Lưu thành công");
                    if ($model->status == $model::STATUS_DRAFT)
                        $this->redirectUrl = Url::to(['update', 'id' => $model->id]);
                } else {
                    Yii::$app->session->setFlash("error", "Can not create ticket model");
                }
            return $this->redirect($this->redirectUrl);
        }
        $check = TicketProductImport::findOne(['status' => TicketProductImport::STATUS_DRAFT, 'created_by' => Yii::$app->user->id]);
        if ($check) {
            return $this->redirect(Url::to(['update', 'id' => $check->id]));
        }
        return $this->render("create", ['model' => $model]);
    }

    public function actionUpdate($id)
    {
        /**
         * @var $model TicketProductImport
         */
        $model = TicketProductImport::findOne($id);

        if ($model->status == TicketProductImport::STATUS_FINISH) {
            throw new HttpException(404, 'Phiếu này đã chốt, quay lại đi');
        }
        if ($model->status == TicketProductImport::STATUS_DELETE) {
            throw new HttpException(404, 'Phiếu này đã bị xóa rồi, đào mộ làm gì');
        }

        if (Yii::$app->request->post('Product')) {
            $model->status = (int)Yii::$app->request->post('status');
            if ($model->status == $model::STATUS_DELETE) {
                $model->delete();
                RltProductTicketProductImport::deleteAll(['ticket_id' => $model->id]);
                Yii::$app->session->setFlash("success", "Hủy phiếu thành công");
                $this->redirectUrl = Url::to(['index']);
            } else
                if ($model->save()) {
                    $model = self::afterSave($model);
                    Yii::$app->session->setFlash("success", "Lưu thành công");
                    if ($model->status == $model::STATUS_FINISH)
                        $this->redirectUrl = Url::to(['index']);
                } else {
                    Yii::$app->session->setFlash("error", "Can not create ticket model");
                }
            return $this->redirect($this->redirectUrl);
        }
        return $this->render("update", ['model' => $model]);
    }

    private function afterSave($model)
    {
        /**
         * @var $model TicketProductImport
         */

        foreach (Yii::$app->request->post('Product')['name'] as $k => $name) {
            if (!empty($name)) {
                if (!empty(Yii::$app->request->post('Product')['id'][$k])) {
                    $rlt = RltProductTicketProductImport::findOne(Yii::$app->request->post('Product')['id'][$k]);
                } else
                    $rlt = new RltProductTicketProductImport();
                $rlt->ticket_id = $model->id;
                $rlt->product_name = trim($name);
                $rlt->note = Yii::$app->request->post('Product')['note'][$k];
                $rlt->total_import = Yii::$app->request->post('Product')['total_import'][$k];
                $rlt->price_sale = Yii::$app->request->post('Product')['price_sale'][$k];
                $rlt->price_store = Yii::$app->request->post('Product')['price_store'][$k];
                $rlt->price_store_cn = Yii::$app->request->post('Product')['price_store_cn'][$k];
                if ($model->ty_gia_cn_vn > 0) {
                    if (!empty($rlt->price_store_cn) && empty($rlt->price_store)) {
                        $rlt->price_store = (int)((float)$rlt->price_store_cn * $model->ty_gia_cn_vn);
                    }
                }
                /*var_dump($model->ty_gia_cn_vn);
                var_dump($rlt->price_store_cn);
                var_dump($rlt->price_store);
                die;*/
                if (!$rlt->save()) {
                    throw new HttpException(404, Json::encode($rlt->errors));
                } else {
                    if ($model->status == TicketProductImport::STATUS_FINISH) {
                        $product = new Product();
                        $product->name = $rlt->product_name;
                        $product->stock = $rlt->total_import;
                        $product->price_store = $rlt->price_store;
                        $product->price_sale = $rlt->price_sale;
                        $product->note = $rlt->note;
                        if (!$product->save()) {
                            throw new HttpException(404, Json::encode($product->errors));
                        } else {
                            $rlt->product_id = $product->id;
                            $rlt->product_code = $product->code;
                            $rlt->save();
                        }
                    }
                }
            }
        }
        $rs = Yii::$app->db->createCommand("SELECT SUM(total_import*price_store) as price,SUM(total_import) as product,SUM(total_import*price_store_cn) as price_cn,
                                            SUM(total_import*price_sale) as price_sale FROM rlt_product_ticket_product_import WHERE ticket_id=:ticket_id")
            ->bindValue(":ticket_id", $model->id)->queryOne();
        $model->total_product = $rs['product'];
        $model->total_price = $rs['price'];
        $model->total_price_cn = $rs['price_cn'];
        $model->total_sale_price = $rs['price_sale'];

        parse_str(Yii::$app->request->post('TicketProductImport')['other'], $data);
        $model->attributes = $data;
        $model->update();

        return $model;
    }

}