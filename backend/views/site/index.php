<?php
/* @var $this yii\web\View */
use yii\helpers\Url;

$this->title = "Tổng quan";
?>
<!-- -------------- Topbar -------------- -->
<header id="topbar" class="alt">
    <div class="topbar-left">
        <ol class="breadcrumb">
            <li class="breadcrumb-icon">
                <span class="fa fa-home"></span>
            </li>
            <li class="breadcrumb-active">
                <a href="#">Tổng quan</a>
            </li>
        </ol>
    </div>
    <div class="topbar-right">
        <div class="ib topbar-dropdown">
            <label for="topbar-multiple" class="control-label">Reporting Period</label>
            <select id="topbar-multiple" class="hidden">
                <optgroup label="Filter By:">
                    <option value="1-1">Last 30 Days</option>
                    <option value="1-2" selected="selected">Last 60 Days</option>
                    <option value="1-3">Last Year</option>
                </optgroup>
            </select>
        </div>
    </div>
</header>
<!-- -------------- /Topbar -------------- -->

<!-- -------------- Content -------------- -->
<section id="content" class="table-layout animated fadeIn">
    <!-- -------------- Column Center -------------- -->
    <div class="chute chute-center">
        <!-- -------------- Quick Links -------------- -->
        <!--<div class="row">
            <div class="col-sm-6 col-xl-3">
                <div class="panel panel-tile">
                    <div class="panel-body">
                        <div class="row pv10">
                            <div class="col-xs-5 ph10"><img src="<?/*= Url::home() */?>alliance/assets/img/pages/clipart0.png"
                                                            class="img-responsive mauto" alt=""/></div>
                            <div class="col-xs-7 pl5">
                                <h6 class="text-muted">TICKETS ANSWERED</h6>

                                <h2 class="fs50 mt5 mbn">385</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="panel panel-tile">
                    <div class="panel-body">
                        <div class="row pv10">
                            <div class="col-xs-5 ph10"><img src="<?/*= Url::home() */?>alliance/assets/img/pages/clipart1.png"
                                                            class="img-responsive mauto" alt=""/></div>
                            <div class="col-xs-7 pl5">
                                <h6 class="text-muted">PROJECTS LAUNCHED</h6>

                                <h2 class="fs50 mt5 mbn">197</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="panel panel-tile">
                    <div class="panel-body">
                        <div class="row pv10">
                            <div class="col-xs-5 ph10"><img src="<?/*= Url::home() */?>alliance/assets/img/pages/clipart2.png"
                                                            class="img-responsive mauto" alt=""/></div>
                            <div class="col-xs-7 pl5">
                                <h6 class="text-muted">HAPPY CUSTOMERS</h6>

                                <h2 class="fs50 mt5 mbn">6789</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="panel panel-tile">
                    <div class="panel-body">
                        <div class="row pv10">
                            <div class="col-xs-5 ph10"><img src="<?/*= Url::home() */?>alliance/assets/img/pages/clipart3.png"
                                                            class="img-responsive mauto" alt=""/></div>
                            <div class="col-xs-7 pl5">
                                <h6 class="text-muted">UNIQUE INNOVATIONS</h6>

                                <h2 class="fs50 mt5 mbn">256</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>-->
    </div>
    <!-- -------------- /Column Center -------------- -->
</section>
<!-- -------------- /Content -------------- -->
