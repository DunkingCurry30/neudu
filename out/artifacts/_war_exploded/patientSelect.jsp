<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/5
  Time: 15:47
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
        <div>
            <!-- Page Header-->
            <header class="page-header">
                <div class="container-fluid">
                    <h2 class="no-margin-bottom">患者费用</h2>
                </div>
            </header>
            <!-- Breadcrumb-->
            <div class="breadcrumb-holder container-fluid">
                <ul class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="index.html">患者费用</a>
                    </li>
                    <li class="breadcrumb-item active">查询费用 </li>
                </ul>
            </div>
            <div>
                <hr />
            </div>

            <!--start发票信息列表-->
            <section class="feeds no-padding-top">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-6  my-layui-layer-content">
                            <div class="card">
                                <div class="card-close">
                                    <div class="dropdown">
                                        <button type="button" class="label label-success"  data-target=".bs-example-modal-lg"><i class="fa fa-search"></i>查询明细</button>
                                        <button type="button" id="closeCard3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                                        <div aria-labelledby="closeCard3" class="dropdown-menu dropdown-menu-right has-shadow">
                                            <a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a>
                                        </div>

                                    </div>
                                </div>
                                <div class="card-header d-flex align-items-center">
                                    <h3 class="h4">发票信息列表</h3>
                                </div>
                                <div class="card-body ">
                                    <div class="table-responsive">
                                        <table class="table table-striped table-hover">
                                            <thead>
                                            <tr>
                                                <th>
                                                    <input type="checkbox" />
                                                </th>
                                                <th>单据号 </th>
                                                <th>发票张数</th>
                                                <th>病例号 </th>
                                                <th>姓名 </th>
                                                <th>发票总数 </th>
                                                <th>自费支付 </th>
                                                <th>账号支付 </th>
                                                <th>报销支付 </th>
                                                <th>优惠金额 </th>
                                                <th>差额</th>
                                                <th>状态 </th>
                                                <th>结算类别</th>
                                                <th>实收费用 </th>
                                                <th>看诊科室 </th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <th>
                                                    <input type="checkbox" />
                                                </th>
                                                <th scope="row">1</th>
                                                <td>Mark</td>
                                                <td>女</td>
                                                <td>1990-12-12</td>
                                                <td>432165321321</td>
                                                <td>213222312212</td>
                                                <td>自付</td>
                                                <td>A级</td>
                                                <td>2019-5-5</td>
                                                <td>2019-5-5</td>
                                                <td>是</td>
                                                <td>康复</td>
                                                <td>已结</td>
                                                <td>内科</td>
                                            </tr>
                                            <tr>
                                                <th>
                                                    <input type="checkbox" />
                                                </th>
                                                <th scope="row">1</th>
                                                <td>Mark</td>
                                                <td>女</td>
                                                <td>1990-12-12</td>
                                                <td>432165321321</td>
                                                <td>213222312212</td>
                                                <td>自付</td>
                                                <td>A级</td>
                                                <td>2019-5-5</td>
                                                <td>2019-5-5</td>
                                                <td>是</td>
                                                <td>康复</td>
                                                <td>已结</td>
                                                <td>内科</td>
                                            </tr>
                                            <tr>
                                                <th>
                                                    <input type="checkbox" />
                                                </th>
                                                <th scope="row">1</th>
                                                <td>Mark</td>
                                                <td>女</td>
                                                <td>1990-12-12</td>
                                                <td>432165321321</td>
                                                <td>213222312212</td>
                                                <td>自付</td>
                                                <td>A级</td>
                                                <td>2019-5-5</td>
                                                <td>2019-5-5</td>
                                                <td>是</td>
                                                <td>康复</td>
                                                <td>已结</td>
                                                <td>内科</td>
                                            </tr>
                                            <tr>
                                                <th>
                                                    <input type="checkbox" />
                                                </th>
                                                <th scope="row">1</th>
                                                <td>Mark</td>
                                                <td>女</td>
                                                <td>1990-12-12</td>
                                                <td>43216532132143216532132143</td>
                                                <td>213222312212</td>
                                                <td>自付</td>
                                                <td>A级</td>
                                                <td>2019-5-5</td>
                                                <td>2019-5-5</td>
                                                <td>是</td>
                                                <td>康复</td>
                                                <td>已结</td>
                                                <td>内科</td>
                                            </tr>
                                            <tr>
                                                <th>
                                                    <input type="checkbox" />
                                                </th>
                                                <th scope="row">1</th>
                                                <td>Mark</td>
                                                <td>女</td>
                                                <td>1990-12-12</td>
                                                <td>432165321321</td>
                                                <td>213222312212</td>
                                                <td>自付</td>
                                                <td>A级</td>
                                                <td>2019-5-5</td>
                                                <td>2019-5-5</td>
                                                <td>是</td>
                                                <td>康复</td>
                                                <td>已结</td>
                                                <td>内科</td>
                                            </tr>
                                            <tr>
                                                <th>
                                                    <input type="checkbox" />
                                                </th>
                                                <th scope="row">1</th>
                                                <td>Mark</td>
                                                <td>女</td>
                                                <td>1990-12-12</td>
                                                <td>432165321321</td>
                                                <td>213222312212</td>
                                                <td>自付</td>
                                                <td>A级</td>
                                                <td>2019-5-5</td>
                                                <td>2019-5-5</td>
                                                <td>是</td>
                                                <td>康复</td>
                                                <td>已结</td>
                                                <td>内科</td>
                                            </tr>
                                            <tr>
                                                <th>
                                                    <input type="checkbox" />
                                                </th>
                                                <th scope="row">1</th>
                                                <td>Mark</td>
                                                <td>女</td>
                                                <td>1990-12-12</td>
                                                <td>432165321321</td>
                                                <td>213222312212</td>
                                                <td>自付</td>
                                                <td>A级</td>
                                                <td>2019-5-5</td>
                                                <td>2019-5-5</td>
                                                <td>是</td>
                                                <td>康复</td>
                                                <td>已结</td>
                                                <td>内科</td>
                                            </tr>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--end发票信息列表-->

                        <!--start查询条件-->
                        <div class="col-lg-6  ">
                            <div class="card">

                                <div class="card-close">
                                    <div class="dropdown">
                                        <button type="button" class="label label-success"  data-target=".bs-example-modal-lg"><i class="fa fa-search"></i>查询明细</button>
                                        <button type="button" id="closeCard3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                                        <div aria-labelledby="closeCard3" class="dropdown-menu dropdown-menu-right has-shadow">
                                            <a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a>
                                        </div>

                                    </div>
                                </div>

                                <div class="card-header d-flex align-items-center">
                                    <h3 class="h4">费用查询条件</h3>

                                </div>
                                <div class="card-body ">
                                    <div class="table-responsive">
                                        <form class="form-inline " >
                                            <div class="form-group lines my-from-margin-left ">
                                                <label for="exampleInputName1">开始时间</label>
                                                <input type="text" class=" form-control "  id="exampleInputName1">
                                            </div>

                                            <div class="form-group lines my-from-margin-left">
                                                <label for="exampleInputName2">结束时间</label>
                                                <input type="email" class="form-control" id="exampleInputName2" >
                                            </div>
                                            <div class="form-group lines my-from-margin-left">
                                                <label for="exampleInputName2">&nbsp;病&nbsp;历&nbsp;号&nbsp;</label>
                                                <input type="email" class="form-control" id="exampleInputName2" >
                                            </div>
                                            <div class="form-group lines my-from-margin-left">
                                                <label for="exampleInputName2">医疗卡号</label>
                                                <input type="email" class="form-control" id="exampleInputName2" >
                                            </div>
                                            <div class="form-group lines my-from-margin-left">
                                                <label for="exampleInputName2 ">患者姓名</label>
                                                <input type="email " class="form-control " id="exampleInputName2 ">
                                            </div>
                                            <div class=" form-group lines  my-from-margin-left">
                                                <label for="exampleInputName2 ">&nbsp;单&nbsp;据&nbsp;号&nbsp;</label>
                                                <input type="email " class="form-control " id="exampleInputName2 " >

                                            </div>
                                            <div class=" form-group lines my-from-margin-left">
                                                <label for="exampleInputName2 ">发票状态</label>
                                                <select class="form-control"  id="exampleInputName2 " >
                                                    <option>已结算</option>
                                                    <option>未结算</option>
                                                </select>
                                            </div>

                                            <div class=" form-group lines my-from-margin-left">
                                                <label for="exampleInputName2 ">结算类别</label>
                                                <select class="form-control"  id="exampleInputName2 " >
                                                    <option>医保</option>
                                                    <option>自付</option>
                                                </select>
                                            </div>

                                            <div class=" form-group lines my-from-margin-left">
                                                <label for="exampleInputName2 ">是否日结</label>
                                                <select class="form-control"  id="exampleInputName2 " >
                                                    <option>是</option>
                                                    <option>否</option>
                                                </select>
                                            </div>

                                            <div class=" form-group lines my-from-margin-left">
                                                <label for="exampleInputName2 ">收款人员</label>
                                                <select class="form-control"  id="exampleInputName2 " >
                                                    <option>小张</option>
                                                    <option>小王</option>
                                                </select>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <!--end查询条件-->


                            <!--start收费明细-->
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
                                    <h3 class="h4">收费明细列表</h3>
                                </div>
                                <div class="card-body ">
                                    <div class="table-responsive">
                                        <table class="table table-striped table-hover">
                                            <thead>
                                            <tr>
                                                <th>开单科室 </th>
                                                <th>开单医生</th>
                                                <th>项目名称</th>
                                                <th>规格 </th>
                                                <th>类别 </th>
                                                <th>单价 </th>
                                                <th>数量 </th>
                                                <th>付数 </th>
                                                <th>单位 </th>
                                                <th>总额 </th>
                                                <th>发票科目 </th>
                                                <th>执行科室 </th>
                                                <th>状态 </th>
                                                <th>收费员 </th>
                                                <th>收费时间</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>Mark</td>
                                                <td>女</td>
                                                <td>1990-12-12</td>
                                                <td>432165321321</td>
                                                <td>213222312212</td>
                                                <td>自付</td>
                                                <td>A级</td>
                                                <td>2132223122125</td>
                                                <td>213222312212</td>
                                                <td>213222312212</td>
                                                <td>自付</td>
                                                <td>A级</td>
                                                <td>2132223122125</td>
                                                <td>213222312212</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>Mark</td>
                                                <td>女</td>
                                                <td>1990-12-12</td>
                                                <td>432165321321</td>
                                                <td>213222312212</td>
                                                <td>自付</td>
                                                <td>A级</td>
                                                <td>2132223122125</td>
                                                <td>213222312212</td>
                                                <td>213222312212</td>
                                                <td>自付</td>
                                                <td>A级</td>
                                                <td>2132223122125</td>
                                                <td>213222312212</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>Mark</td>
                                                <td>女</td>
                                                <td>1990-12-12</td>
                                                <td>432165321321</td>
                                                <td>213222312212</td>
                                                <td>自付</td>
                                                <td>A级</td>
                                                <td>2132223122125</td>
                                                <td>213222312212</td>
                                                <td>213222312212</td>
                                                <td>自付</td>
                                                <td>A级</td>
                                                <td>2132223122125</td>
                                                <td>213222312212</td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--end收费明细列表-->
                    </div>
                </div>
            </section>




        </div>

    </div>
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