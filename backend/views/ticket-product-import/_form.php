<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2/24/2016
 * Time: 6:59 PM
 */
/**
 * @var $model TicketProductImport
 * @var $this View
 */
use common\models\RltProductTicketProductImport;
use common\models\TicketProductImport;
use yii\bootstrap\Html;
use yii\helpers\Url;
use yii\web\View;

?>
<section id="content" class="table-layout">
    <div class="chute chute-center pt30">
        <div class="panel user-group-widget">
            <div class="panel-menu mn">
                <div class="input-group ">
                      <span class="input-group-addon">
                        <i class="fa fa-search"></i>
                      </span>
                    <!--<input type="text" class="form-control typeahead" placeholder="Tìm sản phẩm...">-->
                    <select class="form-control js-data-example-ajax">
                    </select>
                </div>
            </div>
            <div class="panel-body pn">
                <form action="" method="post" id="ticket-content">
                    <input type="submit" class="hidden">
                    <?= Html::hiddenInput('_csrf', Yii::$app->request->getCsrfToken()) ?>
                    <input type="hidden" name="status" id="form-submit" value="0">
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover excel-table">
                            <thead>
                            <tr class="dark">
                                <th width="10">#</th>
                                <th width="10"></th>
                                <th width="60">Mã</th>
                                <th>Tên sản phẩm</th>
                                <th>Ghi chú</th>
                                <th width="90" class="text-right">Giá tàu</th>
                                <th width="90" class="text-right">Giá nhập</th>
                                <th width="90" class="text-right">Giá bán</th>
                                <th width="50" class="text-right">SL</th>
                                <th width="150" class="text-right">Tổng tiền nhập</th>
                                <th width="150" class="text-right">Tổng tiền bán</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr class="info">
                                <td colspan="5" class="text-right">Tổng</td>
                                <td class="text-right"><?= number_format($model->total_price_cn) ?></td>
                                <td class="text-right"></td>
                                <td class="text-right"></td>
                                <td class="text-right"><?= number_format($model->total_product) ?></td>
                                <td class="text-right total-price"><?= number_format($model->total_price * 1000) ?></td>
                                <td class="text-right total-sale-price"><?= number_format($model->total_sale_price * 1000) ?></td>
                            </tr>
                            <?php
                            $stt = 1;
                            $items = $model->getItems();
                            if ($items)
                                foreach ($items as $item) {
                                    /**
                                     * @var $item RltProductTicketProductImport
                                     */
                                    echo $this->render("_form_row", ['item' => $item, 'stt' => $stt]);
                                    $stt++;
                                }
                            for ($i = 0; $i < 10; $i++) {
                                echo $this->render("_form_row", ['item' => null, 'stt' => $stt]);
                                $stt++;
                            }
                            ?>

                            </tbody>
                        </table>
                    </div>
                    <input type="hidden" name="TicketProductImport[other]" value="" id="other-data">
                </form>
            </div>
        </div>
    </div>
    <!-- -------------- Column Right -------------- -->
    <aside class="chute chute-right chute290" data-chute-height="match">
        <!-- -------------- Menu Block -------------- -->
        <div class="theme-primary">
            <form action="" class="" id="other-form">
                <h5 class="pln"> Thông tin phiếu</h5>
                <div class="form-horizontal">
                    <div class="form-group mn">
                        <label class="col-lg-3 control-label">Status</label>
                        <div class="col-lg-7">
                            <p class="form-control-static">
                                <?php
                                if ($model->status != $model::STATUS_DRAFT) {
                                    echo "<span class=\"label label-rounded label-danger\">Chưa lưu</span>";
                                } else {
                                    echo "<span class=\"label label-rounded label-info\">Đã lưu tạm</span>";
                                }
                                ?>

                            </p>
                        </div>
                    </div>
                </div>
                <div class="allcp-form">
                    <div class="section">
                        <label class="field prepend-icon">
                            <textarea class="gui-textarea maxlength" id="note" name="note" placeholder="Ghi chú" rows="2" maxlength="500"><?= $model->note ?></textarea>
                            <label for="comment" class="field-icon">
                                <i class="fa fa-file"></i>
                            </label>
                        </label>
                    </div>
                    <div class="section">
                        <label for="date_import" class="field prepend-icon">
                            <input type="text" id="date_import" name="date_import"
                                   class="gui-input" value="<?= $model->date_import ?>"
                                   placeholder="Ngày nhập hàng">
                            <label class="field-icon">
                                <i class="fa fa-calendar"></i>
                            </label>
                        </label>
                    </div>
                    <div class="section">
                        <label class="field prepend-icon">
                            <input type="text" class="gui-input" id="ty-gia" name="ty_gia_cn_vn" value="<?= $model->ty_gia_cn_vn ?>" placeholder="Tỷ giá Tàu/VNĐ">
                            <label for="comment" class="field-icon">
                                <i class="fa fa-dollar"></i>
                            </label>
                        </label>
                    </div>
                </div>
                <!--<div class="form-group mn">
                    <label class="control-label">Tổng tiền</label>
                    <h2 class="mn"><span class="total-price"><? /*= number_format($model->getTotalPriceStore() * 1000) */ ?></span> VNĐ</h2>
                </div>-->
                <hr class="short alt">
                <div class="alert alert-primary pastel">
                    <i class="fa fa-info pr10"></i>Nhập đầy đủ <b>Tên sản phẩm</b>, <b>Giá nhập</b> và <b>Số lượng</b>
                </div>
                <div class="section">
                    <button class="btn btn-success btn-bordered btn-block" id="btn-f9" type="button">Lưu tạm [F9]</button>
                    <button class="btn btn-danger btn-bordered btn-block" type="button" onclick="if(confirm('Hủy thật đấy?')){submitForm(2)}">Hủy</button>
                    <button class="btn btn-primary btn-bordered btn-block" type="button" onclick="if(confirm('Chốt hạ chưa?')){submitForm(1)}">Chốt phiếu</button>
                </div>
            </form>
        </div>
    </aside>
    <!-- -------------- /Column Right -------------- -->
</section>
<?php
$this->registerCssFile(Url::home() . "alliance/assets/js/plugins/select2/css/core.css");
$this->registerJsFile(Url::home() . "alliance/assets/js/plugins/select2/select2.min.js");
$this->registerJsFile(Url::home() . "alliance/assets/allcp/forms/js/jquery-ui-datepicker.min.js");
?>
<script>
    function isNumber(evt, element) {
        var charCode = (evt.which) ? evt.which : event.keyCode
        if (
            (charCode != 45 || $(element).val().indexOf('-') != -1) &&      // “-” CHECK MINUS, AND ONLY ONE.
            (charCode != 46 || $(element).val().indexOf('.') != -1) &&      // “.” CHECK DOT, AND ONLY ONE.
            (charCode < 48 || charCode > 57))
            return false;

        return true;
    }
    function FormatCurrency(ctrl) {
        //Check if arrow keys are pressed - we want to allow navigation around textbox using arrow keys
        if (event.keyCode == 37 || event.keyCode == 38 || event.keyCode == 39 || event.keyCode == 40) {
            return;
        }

        var val = ctrl.value;

        val = val.replace(/,/g, "")
        ctrl.value = "";
        val += '';
        x = val.split('.');
        x1 = x[0];
        x2 = x.length > 1 ? '.' + x[1] : '';

        var rgx = /(\d+)(\d{3})/;

        while (rgx.test(x1)) {
            x1 = x1.replace(rgx, '$1' + ',' + '$2');
        }

        ctrl.value = x1 + x2;
    }

    function tinh_tong_gia_nhap(ctrl) {
        var ty_gia = parseFloat($('#ty-gia').val()),
            gia_tau = parseInt($(ctrl).parent().parent().find("input.price-store-cn").val().split(",").join("")),
            gia_nhap = parseInt($(ctrl).parent().parent().find("input.price-store").val().split(",").join("")),
            total_import = parseInt($(ctrl).parent().parent().find("input.total-import").val().split(",").join("")),
            total_money = 0,
            v = 0;
        //console.log(gia_nhap)
        if (ty_gia > 0 && !gia_nhap && gia_tau > 0) {
            //console.log(123)
            gia_nhap = parseInt(gia_tau * ty_gia);
            $(ctrl).parent().parent().find("input.price-store").val(gia_nhap)
        }
        $(ctrl).parent().parent().find(".total-row-money").html(number_format(gia_nhap * total_import * 1000))
        $('.total-row-money').each(function () {
            v = parseFloat($(this).html().split(",").join(""))
            if (v && v > 0)
                total_money = total_money + v;
        })
        $('.total-price').html(number_format(total_money))
    }

    function tinh_tong_gia_ban(ctrl) {
        var total_import = parseInt($(ctrl).parent().parent().find("input.total-import").val().split(",").join("")),
            gia_ban = parseInt($(ctrl).parent().parent().find("input.price-sale").val().split(",").join("")),
            total_money = 0,
            v = 0;

        $(ctrl).parent().parent().find(".total-sale-row-money").html(number_format(gia_ban * total_import * 1000))
        $('.total-sale-row-money').each(function () {
            v = parseFloat($(this).html().split(",").join(""))
            if (v && v > 0)
                total_money = total_money + v;
        })
        $('.total-sale-price').html(number_format(total_money))
    }
    function CheckNumeric() {
        return event.keyCode >= 48 && event.keyCode <= 57;
    }
    function submitForm(status) {
        $('#form-submit').val(status);
        $('#other-data').val($('#other-form').serialize())
        $('#ticket-content').submit();
    }

    $(function () {
        $('#btn-f9').click(function () {
            submitForm(0)
        })

        $(document).bind('keydown', 'f9', function checkKey() {
            $('#btn-f9').click()
            return false;
        });
        jQuery.hotkeys.options.filterContentEditable =
            jQuery.hotkeys.options.filterInputAcceptingElements =
                jQuery.hotkeys.options.filterTextInputs = false;

        autosize($('textarea'));
        $('.remove-item').click(function () {
            $.ajax({
                url: $(this).attr('href'),
                data: '<?= Yii::$app->request->csrfParam; ?>=<?= Yii::$app->request->csrfToken; ?>',
            });
            $(this).parent().parent().parent().remove();
            return false;
        })
    })

    //select 2
    function formatRepo(repo) {
        if (repo.loading) return repo.text;

        var markup = "<div class='select2-result-repository clearfix'>" +
            "<div class='select2-result-repository__avatar'><img src='" + repo.avatar_url + "' /></div>" +
            "<div class='select2-result-repository__meta'>" +
            "<div class='select2-result-repository__title'>" + repo.name + "</div>";

        if (repo.description) {
            markup += "<div class='select2-result-repository__description'>abs</div>";
        }

        markup += "<div class='select2-result-repository__statistics'>" +
            "<div class='select2-result-repository__forks'><i class='fa fa-flash'></i>0 Forks</div>" +
            "<div class='select2-result-repository__stargazers'><i class='fa fa-star'></i>0 Stars</div>" +
            "<div class='select2-result-repository__watchers'><i class='fa fa-eye'></i>0 Watchers</div>" +
            "</div>" +
            "</div></div>";

        return markup;
    }

    function formatRepoSelection(repo) {
        return repo.name || repo.text;
    }

    $(function () {
        $("#date_import").datepicker({
            dateFormat: 'dd/mm/yy',
            prevText: '<i class="fa fa-chevron-left"></i>',
            nextText: '<i class="fa fa-chevron-right"></i>',
            showButtonPanel: false,
            beforeShow: function (input, inst) {
                var newclass = 'allcp-form';
                var themeClass = $(this).parents('.allcp-form').attr('class');
                var smartpikr = inst.dpDiv.parent();
                if (!smartpikr.hasClass(themeClass)) {
                    inst.dpDiv.wrap('<div class="' + themeClass + '"></div>');
                }
            }
        });

        $(".js-data-example-ajax").select2({
            placeholder: "Tìm kiếm sản phẩm",
            allowClear: true,
            ajax: {
                //url: "https://api.github.com/search/repositories",
                url: "<?=Url::to(['/site/search'])?>",
                dataType: 'json',
                //delay: 250,
                data: function (params) {
                    return {
                        q: params.term, // search term
                        page: params.page,
                        csrf: "<?= Yii::$app->request->csrfToken; ?>",
                    };
                },
                processResults: function (data, params) {
                    // parse the results into the format expected by Select2
                    // since we are using custom formatting functions we do not need to
                    // alter the remote JSON data, except to indicate that infinite
                    // scrolling can be used
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
        $('.js-data-example-ajax').on('select2:select', function (e) {
            console.log(e.currentTarget.value)
            //$(".js-data-example-ajax").select2("val", "");
        });
    })
</script>