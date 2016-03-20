<?php
/**
 * Created by PhpStorm.
 * User: Mitonios-Tofu
 * Date: 3/14/2016
 * Time: 4:48 PM
 */

namespace backend\controllers;

use Yii;

use common\models\Order;

class OrderController extends BackendController
{
    public function actionIndex()
    {
        $query = Order::find();
        $query->andFilterWhere(['status' => Order::STATUS_FINISH]);
        if (Yii::$app->request->get("filter")) {
            $filter = Yii::$app->request->get("filter");
            //$query->andFilterWhere(['customer_id' => $filter['customer_id']]);
            //$query->andFilterWhere(['sale_id' => $filter['sale_id']]);
            $query->andFilterWhere(['like', 'sale_date', date("Y-m-d", strtotime(str_replace("/", '-', $filter['sale_date'])))]);
        }

        $params = [];
        //calculate
        $params['tong_tien'] = $query->sum('total_money-discount');
        $params['tong_giam'] = $query->sum('discount');
        $params['tong_don_hang'] = $query->count();
        $params['tong_san_pham'] = $query->sum('total_product');
        //-calculate

        $params['models'] = $query->orderBy('sale_date DESC')->all();
        return $this->render("index", $params);
    }
}