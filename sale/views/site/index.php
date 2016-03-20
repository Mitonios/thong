<?php

/* @var $this yii\web\View */
/**
 * @var $items Order[]
 * @var $model Order
 * @var $products Product[]
 */

use common\models\Order;
use common\models\Product;
use yii\bootstrap\ActiveForm;
use yii\bootstrap\Html;
use yii\helpers\Url;

$this->title = 'Bán hàng';
?>
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="collapse navbar-collapse">
            <div class="navbar-form navbar-left">
                <div class="form-group">
                    <select class="form-control" id="search-product" style="width: 300px">
                        <option selected="selected">Tìm kiếm sản phẩm [F2]</option>
                    </select>
                </div>
            </div>
            <ul class="nav navbar-nav">
                <?php
                $i = 1;
                foreach ($items as $item) {
                    $class = Yii::$app->request->get('id') ? (Yii::$app->request->get('id') == $item->id ? "active" : "") : ($i == 1 ? "active" : "");
                    echo '<li class="' . $class . '">' . Html::a("Hóa đơn " . $i, ['index', 'id' => $item->id]) . '</li>';
                    $i++;
                }
                ?>
            </ul>
            <div class="navbar-form navbar-left">
                <a href="<?= Url::to(['create']) ?>" class="btn btn-default"><i class="glyphicon glyphicon-plus"></i></a>
            </div>
            <ul class="nav navbar-nav navbar-right">
                <li id="fat-menu" class="dropdown" style="margin-right: 10px;">
                    <a id="drop3" href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                        <i class="glyphicon glyphicon-align-justify"></i>
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="drop3">
                        <li><a href="#">Quản lý</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">Thoát</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </nav>
<?php $form = ActiveForm::begin([
    'method' => 'post',
    'id' => 'main-form',
    'action' => ['update', 'id' => $model->id],
]); ?>
    <div id="panel-left">
        <div id="bill-items">
            <table class="table table-hover">
                <tbody id="bill-product-list">
                <?php
                $rlt = $model->getProducts();
                foreach ($rlt as $item) {
                    echo $this->render("product_item", ['model' => $item]);
                }
                ?>
                </tbody>
            </table>
        </div>
        <div id="product-items">
            <?php
            foreach ($products as $product) {
                ?>
                <div class="item">
                    <a href="#" class="avatar" onclick="return addProduct(<?= $product->id ?>)">
                        <span class="label label-primary price"><?= number_format($product->price_sale * 1000) ?></span>
                        <?= Html::img(!empty($product->avatar) ? Yii::$app->params['uploadUrl'] . $product->avatar : "holder.js/300x200", ['class' => 'img-responsive mw40 ib mr10']) ?>
                    </a>
                    <a href="#" class="name" onclick="return addProduct(<?= $product->id ?>)"><?= $product->name ?></a>
                </div>
                <?php
            }
            ?>
        </div>
    </div>

    <div id="panel-right">
        <div class="panel panel-success">
            <div class="panel-heading"><h3 class="panel-title">Khách hàng</h3></div>
            <div class="panel-body">
                <div class="input-group">
                    <select class="form-control" id="search-customer">
                        <option selected="selected">Tìm kiếm khách hàng</option>
                    </select>
                    <span class="input-group-btn">
                        <a href="" class="btn btn-primary" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-plus"></span></a>
                    </span>
                </div>
                <div id="customer-info-area"></div>
            </div>
        </div>
        <div class="panel panel-info">
            <div class="panel-heading"><h3 class="panel-title">Hóa đơn</h3></div>
            <div class="panel-body">
                <div class="form-group">
                    <?= Html::activeTextInput($model, 'sale_date', ['class' => 'form-control datetimepicker', 'placeholder' => 'Ngày thanh toán']) ?>
                </div>
                <div class="form-group">
                    <?= Html::activeTextarea($model, 'note', ['class' => 'form-control', 'placeholder' => 'Ghi chú']) ?>
                </div>
            </div>
        </div>
        <div class="panel panel-danger">
            <div class="panel-heading"><h3 class="panel-title">Thanh toán</h3></div>
            <div class="panel-body">
                <div class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-5 control-label">Tổng tiền</label>
                        <?php
                        echo Html::activeHiddenInput($model, 'total_money');
                        echo Html::activeHiddenInput($model, 'total_product');
                        ?>
                        <div class="col-sm-7">
                            <p class="form-control-static"><span id="total_price">0</span> [<span id="total_product">0</span> chiếc]</p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-5 control-label">Giảm giá</label>
                        <div class="col-sm-7">
                            <?= Html::activeTextInput($model, 'discount', ['class' => 'form-control text-right', 'placeholder' => 'Giảm giá',
                                'onkeyup' => 'FormatCurrency(this);updatePrice()']) ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-5 control-label">Tiền cần trả</label>
                        <div class="col-sm-7 text-right">
                            <h3 style="margin:0"><span id="must_pay">0</span></h3>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-5 control-label">Khách đưa</label>
                        <div class="col-sm-7">
                            <input onkeyup="FormatCurrency(this);updatePrice();" id="khach_dua" type="text" class="form-control text-right" placeholder="Khách đưa[F4]">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-5 control-label">Trả lại</label>
                        <div class="col-sm-7">
                            <p class="form-control-static" id="pay_back">0</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <a href="<?= Url::to(['delete', 'id' => $model->id]) ?>" onclick="return confirm('Chắc chứ?')" class="btn btn-danger btn-lg">Hủy</a>
        <button type="submit" name="save" class="btn btn-primary btn-lg" onclick="return confirm('Chắc đấy?')">Thanh toán</button>
    </div>
<?php ActiveForm::end(); ?>
    <!-- Modal -->
    <div class="modal" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog modal-sm" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Tạo khách hàng mới</h4>
                </div>
                <form action="" id="new-customer">
                    <div class="modal-body">
                        <div class="form-group">
                            <input type="text" class="form-control" name="Customer[name]" placeholder="Họ và tên" required id="customer-name" autofocus>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" name="Customer[phone]" placeholder="Số điện thoại" required>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" name="Customer[facebook]" placeholder="Địa chỉ Facebook">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Lưu</button>
                    </div>
                    <?php
                    echo Html::hiddenInput("csrf", Yii::$app->request->csrfToken)
                    ?>
                </form>

            </div>
        </div>
    </div>
    <script>
        function decreaseQuality(id) {
            if (parseInt($('#quality_' + id).val()) > 1)
                $('#quality_' + id).val(parseInt($('#quality_' + id).val()) - 1)
            $('#total_price_' + id).html(number_format(parseInt($('#quality_' + id).val()) * parseInt($('#price_' + id).val().split(",").join(""))))
            updatePrice()
            return false
        }
        function increaseQuality(id) {
            $('#quality_' + id).val(parseInt($('#quality_' + id).val()) + 1)
            $('#total_price_' + id).html(number_format(parseInt($('#quality_' + id).val()) * parseInt($('#price_' + id).val().split(",").join(""))))
            updatePrice()
            return false
        }

        function updatePrice() {
            var total = 0, price = 0;
            $('.product_quality').each(function () {
                total += parseInt($(this).val())
            })
            $('#total_product').html(number_format(total))
            $('.total_price').each(function () {
                price += parseInt($(this).html().split(",").join(""))
            })
            $('#total_price').html(number_format(price))

            $('#order-total_product').val(total)
            $('#order-total_money').val(price)
            $('#must_pay').html(number_format(parseInt(price - parseInt($('#order-discount').val().split(",").join("")))))
            $('#pay_back').html(number_format(parseInt($('#khach_dua').val().split(",").join("")) - parseInt($('#must_pay').html().split(",").join(""))))
        }

        function removeItem(id) {
            $.ajax({
                type: "POST",
                url: '<?=Url::to(['remove-relation'])?>',
                data: {id: id},
                error: function (xhr, ajaxOptions, thrownError) {
                    console.error(xhr.responseText);
                },
                success: function (data) {
                    $('#product_' + id).remove();
                    updatePrice()
                }
            });
            return false
        }

        //select 2
        function formatRepo(repo) {
            if (repo.loading) return repo.text;

            var markup = "<div class='select2-result-repository clearfix'>" +
                "<div class='select2-result-repository__avatar'><img src='" + repo.avatar + "' /></div>" +
                "<div class='select2-result-repository__meta'>" +
                "<div class='select2-result-repository__title'>" + repo.name + "</div>";

            if (repo.note) {
                markup += "<div class='select2-result-repository__description'>" + repo.note + "</div>";
            }

            markup += "<div class='select2-result-repository__statistics'>" +
                "<div class='select2-result-repository__forks'><i class='fa fa-flash'></i>" + repo.code + "</div>" +
                "<div class='select2-result-repository__stargazers'><i class='fa fa-star'></i>" + repo.price_sale + "đ</div>" +
                "<div class='select2-result-repository__watchers'><i class='fa fa-eye'></i>" + repo.stock + "c</div>" +
                "</div>" +
                "</div></div>";

            return markup;
        }

        function formatRepoSelection(repo) {
            return repo.name || repo.text;
        }

        function addProduct(id) {
            console.log()
            $.ajax({
                type: "POST",
                url: '<?=Url::to(['add-product'])?>',
                data: "id=" + id + "&order_id=<?=$model->id?>",
                error: function (xhr, ajaxOptions, thrownError) {
                    console.error(xhr.responseText);
                },
                success: function (data) {
                    if ($("#product_" + id).length) {

                    } else
                        $('#bill-product-list').append(data)
                    updatePrice()
                    silentUpdate()
                }
            });
            return false;
        }
        function addUser(id) {
            $.ajax({
                type: "POST",
                url: '<?=Url::to(['load-customer'])?>',
                data: "id=" + id + "&order_id=<?=$model->id?>",
                error: function (xhr, ajaxOptions, thrownError) {
                    console.error(xhr.responseText);
                },
                success: function (data) {
                    $('#customer-info-area').html(data)
                    silentUpdate()
                }
            });
        }
        function silentUpdate() {
            $.ajax({
                type: "POST",
                url: '<?=Url::to(['update', 'id' => $model->id])?>',
                data: $('#main-form').serialize(),
                error: function (xhr, ajaxOptions, thrownError) {
                    console.error(xhr.responseText);
                }
            });
        }

        $(function () {
            updatePrice()
            <?
            if(!empty($model->customer_id)){
            ?>
            addUser(<?=$model->customer_id?>)
            <?
            }
            ?>
            $('#myModal').on('show.bs.modal', function (event) {
                $(this).find("input").each(function () {
                    $(this).val('')
                })
                $('#customer-name').focus()
            })

            $('#new-customer').submit(function () {
                var form = $(this)
                $.ajax({
                    type: "POST",
                    url: '<?=Url::to('create-customer')?>',
                    data: form.serialize(),
                    dataType: 'json',
                    error: function (xhr, ajaxOptions, thrownError) {
                        console.error(xhr.responseText);
                    },
                    success: function (data) {
                        $('#myModal').modal('hide')
                        addUser(data.id)
                    }
                });
                return false
            })
            //select 2
            $("#search-customer").select2({
                placeholder: "Tìm kiếm khách hàng",
                allowClear: true,
                ajax: {
                    //url: "https://api.github.com/search/repositories",
                    url: "<?=Url::to(['/site/search-customer'])?>",
                    dataType: 'json',
                    data: function (params) {
                        return {
                            q: params.term, // search term
                            page: params.page,
                            csrf: "<?= Yii::$app->request->csrfToken; ?>",
                        };
                    },
                    processResults: function (data, params) {
                        return {
                            results: $.map(data, function (item) {
                                return {
                                    text: item.name,
                                    id: item.id
                                }
                            })
                        };
                    },
                    cache: true
                },
                escapeMarkup: function (markup) {
                    return markup;
                }, // let our custom formatter work
                minimumInputLength: 1,
            }).on('select2:select', function (e) {
                //console.log(e.currentTarget.value)
                addUser(e.currentTarget.value)
                $(this).select2("val", "");
            });
            $('.datetimepicker').datetimepicker({
                format: "YYYY-MM-DD HH:mm:ss",
                showTodayButton: true,
            });
            setInterval(silentUpdate, 5000);

            $("#search-product").select2({
                placeholder: "Tìm kiếm sản phẩm",
                allowClear: true,
                ajax: {
                    url: "<?=Url::to(['/site/search-product'])?>",
                    dataType: 'json',
                    data: function (params) {
                        return {
                            q: params.term, // search term
                            page: params.page,
                            csrf: "<?= Yii::$app->request->csrfToken; ?>",
                        };
                    },
                    processResults: function (data, params) {
                        params.page = params.page || 1;
                        return {
                            results: data.items,
                            pagination: {
                                more: (params.page * 30) < data.total_count
                            }
                        };
                    },
                    cache: true
                },
                escapeMarkup: function (markup) {
                    return markup;
                }, // let our custom formatter work
                minimumInputLength: 1,
                templateResult: formatRepo, // omitted for brevity, see the source of this page
                templateSelection: formatRepoSelection // omitted for brevity, see the source of this page
            });
            $('#search-product').on('select2:select', function (e) {
                addProduct(e.currentTarget.value)
                $(this).select2("val", "");
            });
        })

    </script>
<?php
$this->registerJsFile(Url::home() . "/js/select2-4.0.2-rc.1/js/select2.full.min.js");
$this->registerCssFile(Url::home() . "/js/select2-4.0.2-rc.1/css/select2.min.css");
$this->registerCssFile(Url::home() . "/js/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css");
$this->registerJsFile(Url::home() . "/js/bootstrap-datetimepicker/js/moment.min.js");
$this->registerJsFile(Url::home() . "/js/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js");