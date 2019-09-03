<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/5
  Time: 15:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>HIS医院管理信息系统V3.0-HIS部分门诊部分</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
    <!-- Fontastic Custom icon font-->
    <link rel="stylesheet" href="css/fontastic.css">
    <!-- Google fonts - Poppins -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
    <link rel="stylesheet" href="css/myStyle.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/favicon.ico">
    <!-- Tweaks for older IEs-->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->

</head>

<body>
<div class="page">
    <div class="page-content d-flex align-items-stretch">
        <div class="col-md-12">
            <!-- Page Header-->
            <header class="page-header">
                <div class="container-fluid">
                    <h2 class="no-margin-bottom">日结管理</h2>
                </div>
            </header>
            <!-- Breadcrumb-->
            <div class="breadcrumb-holder container-fluid">
                <ul class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="index.html">日结管理</a>
                    </li>
                    <li class="breadcrumb-item active">日结查询 </li>
                </ul>
            </div>
            <!--*病历start-->
            <section class="forms">
                <div class="container-fluid">
                    <div class="row">

                        <form class="form-inline">
                            查询条件信息
                            <hr />
                            <div class="col-md-12">
                                <div class="pull-left">
                                    <div class="form-group row">
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <button data-toggle="dropdown" type="button" class="btn btn-outline-secondary ">收款员</button>
                                            </div>
                                            <select class="form-control">
                                                <option>隔壁老陈</option>
                                                <option>隔壁小姐姐</option>
                                                <option>正宫娘娘</option>
                                                <option>侧宫嫔妃</option>
                                            </select>

                                        </div>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <button data-toggle="dropdown" type="button" class="btn btn-outline-secondary ">开始日期</button>
                                            </div>
                                            <input type="text" class="form-control">

                                        </div>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <button data-toggle="dropdown" type="button" class="btn btn-outline-secondary ">截止日期</button>
                                            </div>
                                            <input type="text" class="form-control">

                                        </div>
                                        <div class="input-group">
                                            <button type="button" class="btn btn-warning tables-from-button"><i class="icon icon-search"></i>日结</button>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>

                    </div>

                </div>
            </section>
        </div>
    </div>
    <!--病历end-->

    <!--start日结信息列表-->
    <section class="feeds no-padding-top">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-4  my-layui-layer-content">
                    <div class="card">
                        <div class="card-close">
                            <div class="dropdown">
                                <button type="button" class="label label-success" data-target=".bs-example-modal-lg"><i class="icon icon-search"></i>查询明细</button>
                                <button type="button" id="closeCard3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                                <div aria-labelledby="closeCard3" class="dropdown-menu dropdown-menu-right has-shadow">
                                    <a href="#" class="dropdown-item "> <i class="fa fa-refresh"></i>刷新</a>
                                    <a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a>
                                </div>
                            </div>
                        </div>
                        <div class="card-header d-flex align-items-center">

                        </div>
                        <div class="card-body  ">
                            <div class="table-responsive">
                                <table class="table  table-hover">
                                    <thead>
                                    <tr>
                                        <th>
                                            <input type="checkbox" />
                                        </th>
                                        <th>
                                            收款员
                                        </th>
                                        <th>
                                            日结日期
                                        </th>
                                    </tr>
                                    </thead>
                                    <tbody>

                                    <tr>
                                        <td>
                                            <input type="checkbox" />
                                        </td>
                                        <td>小王</td>
                                        <td>2019-8-8 12:12:12</td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <input type="checkbox" />
                                        </td>
                                        <td>小王</td>
                                        <td>2019-8-8 12:12:12</td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <input type="checkbox" />
                                        </td>
                                        <td>小王</td>
                                        <td>2019-8-8 12:12:12</td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <input type="checkbox" />
                                        </td>
                                        <td>小王</td>
                                        <td>2019-8-8 12:12:12</td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <input type="checkbox" />
                                        </td>
                                        <td>小王</td>
                                        <td>2019-8-8 12:12:12</td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <input type="checkbox" />
                                        </td>
                                        <td>小王</td>
                                        <td>2019-8-8 12:12:12</td>
                                    </tr>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <!--end日结信息列表-->

                <!--start查询明细信息-->
                <div class="col-lg-8  ">
                    <div class="card">
                        <div class="card-close">
                            <div class="dropdown">
                                <button type="button" id="closeCard3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                                <div aria-labelledby="closeCard3" class="dropdown-menu dropdown-menu-right has-shadow">
                                    <a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a>
                                </div>
                            </div>
                        </div>
                        <div class="card-header d-flex align-items-center">
                            <h3 class="h4">挂号发票信息</h3>
                        </div>
                        <div class="card-body ">
                            <div class="table-responsive">

                                <table class="table  table-hover">
                                    <thead>
                                    <tr>
                                        <th>
                                            编号
                                        </th>
                                        <th>
                                            单据号
                                        </th>
                                        <th>
                                            病例号
                                        </th>
                                        <th>
                                            姓名
                                        </th>
                                        <th>
                                            发票总数
                                        </th>
                                        <th>
                                            自费支付
                                        </th>
                                        <th>
                                            账户支付
                                        </th>
                                        <th>
                                            报销支付
                                        </th>
                                        <th>
                                            优惠支付
                                        </th>
                                        <th>
                                            总费用
                                        </th>
                                    </tr>
                                    </thead>
                                    <tbody>

                                    <tr>
                                        <td>
                                            1
                                        </td>
                                        <td>112121</td>
                                        <td>1212211212</td>
                                        <td>
                                            小王
                                        </td>
                                        <td>22222</td>
                                        <td>3333332</td>
                                        <td>
                                            33333
                                        </td>
                                        <td>444444</td>
                                        <td>55555</td>
                                        <td>666666</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1
                                        </td>
                                        <td>112121</td>
                                        <td>1212211212</td>
                                        <td>
                                            小王
                                        </td>
                                        <td>22222</td>
                                        <td>3333332</td>
                                        <td>
                                            33333
                                        </td>
                                        <td>444444</td>
                                        <td>55555</td>
                                        <td>666666</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1
                                        </td>
                                        <td>112121</td>
                                        <td>1212211212</td>
                                        <td>
                                            小王
                                        </td>
                                        <td>22222</td>
                                        <td>3333332</td>
                                        <td>
                                            33333
                                        </td>
                                        <td>444444</td>
                                        <td>55555</td>
                                        <td>666666</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1
                                        </td>
                                        <td>112121</td>
                                        <td>1212211212</td>
                                        <td>
                                            小王
                                        </td>
                                        <td>22222</td>
                                        <td>3333332</td>
                                        <td>
                                            33333
                                        </td>
                                        <td>444444</td>
                                        <td>55555</td>
                                        <td>666666</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1
                                        </td>
                                        <td>112121</td>
                                        <td>1212211212</td>
                                        <td>
                                            小王
                                        </td>
                                        <td>22222</td>
                                        <td>3333332</td>
                                        <td>
                                            33333
                                        </td>
                                        <td>444444</td>
                                        <td>55555</td>
                                        <td>666666</td>
                                    </tr>

                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </div>
                    <!--end查询明细信息-->

                </div>
            </div>
        </div>
    </section>


</div>
<!-- JavaScript files-->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/popper.js/umd/popper.min.js">
</script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="vendor/jquery.cookie/jquery.cookie.js">
</script>
<script src="vendor/chart.js/Chart.min.js"></script>
<script src="vendor/jquery-validation/jquery.validate.min.js"></script>
<!-- Main File-->
<script src="js/front.js"></script>
</body>

</html>