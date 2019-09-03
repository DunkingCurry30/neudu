<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/5
  Time: 15:46
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
                    <h2 class="no-margin-bottom">工量管理</h2>
                </div>
            </header>
            <!-- Breadcrumb-->
            <div class="breadcrumb-holder container-fluid ">
                <ul class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="index.html">门诊人员</a>
                    </li>
                    <li class="breadcrumb-item active">门诊人员工作量</li>
                </ul>
            </div>
            <!--*病历start-->
            <section class="forms">
                <div class="container-fluid">
                    <form class="form-inline">
                        <div class="row"><i>查询条件:</i>
                            <hr/>
                            <div class="col-md-12">
                                <div class="pull-left">
                                    <div class="form-group row">
                                        <div class="input-group">
                                            <div class="input-group-prepend">

                                                <div class="form-group">
                                                    <label for="exampleInputName2">开始日期</label>
                                                    <input type="text" class="form-control" id="exampleInputName2" placeholder="开始日期">
                                                </div>
                                                <div class="form-group">
                                                    <label for="exampleInputEmail2">结束日期</label>
                                                    <input type="text" class="form-control" id="exampleInputEmail2" placeholder="结束日期">
                                                </div>
                                                <div class="form-group">
                                                    <label for="exampleInputemp">科室</label>
                                                    <input type="text" class="form-control" id="exampleInputemp" placeholder="科室">
                                                </div>
                                                <button type="submit" class="btn btn-default"><i class="icon icon-search"></i>查询</button>
                                            </div>
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

<!--start挂号信息列表-->

<div class="col-lg-12">
    <div class="card">
        <div class="card-close">
            <div class="dropdown">
                <button type="button" class="label label-info" data-toggle="modal" data-target=".bs-example-modal-lg"><img src="img/excel.png" alt="English" class="mr-2 my-input-img"/>&nbsp;</i>导出Excel</button>
                <button type="button" id="closeCard3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                <div aria-labelledby="closeCard3" class="dropdown-menu dropdown-menu-right has-shadow">
                    <a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a>
                </div>

            </div>
        </div>
        <div class="card-header d-flex align-items-center">
            <h1 class="my-text-align-flout" >xxxxxx医院门诊科室工作量</h1>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-striped table-hover">
                    <thead>
                    <tr>
                        <th>
                            科室名称
                        </th>
                        <th>看诊人数 </th>
                        <th>发票数量</th>
                        <th>西药费</th>
                        <th>中药费</th>
                        <th>中 草药</th>
                        <th>挂号费</th>
                        <th>诊断费 </th>
                        <th>检查费</th>
                        <th>检验费 </th>
                        <th>治疗费 </th>
                        <th>材料费 </th>
                        <th>手术费</th>
                        <th>其它治疗费</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <th>
                            小王
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
                    </tr>
                    <tr>
                        <th>
                            小刘
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
                    </tr>
                    <tr>
                        <th>
                            小李
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
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<!--end挂号信息列表-->
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