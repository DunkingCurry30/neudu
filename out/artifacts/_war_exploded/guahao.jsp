<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <!-- CSS Files -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/css/now-ui-kit.css?v=1.1.0" rel="stylesheet" />
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
<%--            <header class="page-header">--%>
<%--                <div class="container-fluid">--%>
<%--                    <h2 class="no-margin-bottom">门诊管理</h2>--%>
<%--                </div>--%>
<%--            </header>--%>
            <!-- Breadcrumb-->
            <div class="breadcrumb-item active">
                <h5>&nbsp;&nbsp;&nbsp;&nbsp;门诊挂号 </h5>
            </div>

            <!--*病历start-->
            <section class="forms">
                <div class="container-fluid">
                    <div class="row">
<%--                        <i>挂号信息</i>--%>
                        <form class="form-inline">

                            <div class="col-md-12">
                                <div class="pull-left">
                                    <div class="form-group row">
<%--                                        <div class="input-group">--%>
<%--                                            <div class="input-group-prepend">--%>
                                                <a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
                                                <button data-toggle="dropdown" type="button" class="btn btn-own ">选择查询号</button>
                                                <!--		<div class="dropdown-menu">
                                                    <a href="#" class="dropdown-item">身份证号</a>
                                                    <a href="#" class="dropdown-item">医保卡号 </a>
                                                    <a href="#" class="dropdown-item">农合卡号</a>
                                                    <a href="#" class="dropdown-item">健康卡号</a>
                                                    <a href="#" class="dropdown-item">熙康卡号</a>
                                                </div>-->
<%--                                            </div>--%>
                                                <input type="text" class="form-control inputout">
<%--                                        </div>--%>
                                    </div>
                                </div>
                                <div class="pull-right pull-right-margin-top " style="margin-top: 10px;">
<%--                                    <a href="#"><span class="label label-default"><img src="img/yuyue.png" alt="out" class="my-input-img"/>预约选择</span></a>--%>
                                    <a href="#"  id="add_number_message"><span class="btn btn-round btn-info">挂号</span></a>
                                     <button href="#" id="cleanScreen" class="btn btn-round btn-default">清屏</button>
<%--                                    <a href="#"><span class="label label-success"><img src="img/bushou.png" alt="out" class="my-input-img"/>补收挂号费</span></a>--%>
<%--                                    <a href="#"><span class="label label-info"><img src="img/buda.png" alt="out" class="my-input-img"/>补打</span></a>--%>
<%--                                    <a href="#"><span class="label label-warning"><img src="img/piao.png" alt="out" class="my-input-img"/>重打</span></a>--%>
<%--                                    <a href="#" id="cleanScreen"><span class="label label-danger"><img src="img/qingping.png" alt="out" class="my-input-img"/>清屏</span></a>--%>
                                </div>
<%--                                <ul class="glyphs css-mapping" >--%>
<%--                                    <li>--%>
<%--                                        <span><i class="icon icon-website"></i>身份证</span>--%>
<%--                                    </li>--%>

<%--                                </ul>--%>
                            </div>
                            <div class="form-group lines">
                                <label for="exampleInputName1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;病历编号:&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                <input type="text" class=" form-control" id="u_id" placeholder="请输入病历号">
                            </div>

                            <div class="form-group lines">
                                <label for="exampleInputName2">&nbsp;&nbsp;姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名:&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                <input type="text" class="form-control" id="u_name" placeholder="请输入姓名">
                            </div>
                            <div class="form-group lines">
                                <label for="exampleInputName2">&nbsp;&nbsp;性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别:&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                <input type="text" class="form-control" id="u_sex" placeholder="请输入性别">
                            </div>
                            <div class="form-group lines">
                                <label for="exampleInputName2">&nbsp;&nbsp;年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;龄:&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                <input type="text" class="form-control" id="u_age" placeholder="请输入年龄">
                            </div>
                            <div class="form-group lines ">
                                <label for="exampleInputName2 ">&nbsp;&nbsp;出生日期:&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                <input type="text " class="form-control "  onClick="WdatePicker({dateFmt:'yyyy-MM-dd'})"  id="u_date" placeholder="请输入出生日期 ">
                            </div>

                            <div class=" form-group lines ">
                                <label for="exampleInputName2 ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;医疗证号:&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                <input type="text " class="form-control " id="u_medicine_number" placeholder="请输入医疗证号">

                            </div>
                            <div class="form-group lines ">
                                <label for="exampleInputName2 ">&nbsp;&nbsp;身份证号:&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                <input type="text " class="form-control " id="u_id_number" placeholder="请输入身份证号 ">
                            </div>
                            <div class="form-group lines ">
                                <label for="exampleInputName2 ">&nbsp;&nbsp;家庭住址:&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                <input type="text " class="form-control " id="u_adder" placeholder="请输入家庭住址">
                            </div>
                            <div class="form-group lines ">
                                <label for="exampleInputName2 ">&nbsp;&nbsp;看诊日期:&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                <input type="text " class="form-control "  onClick="WdatePicker({dateFmt:'yyyy-MM-dd'})"  id="kanzhendate" placeholder="请输入看诊日期 ">
                            </div>

                            <div class="form-group lines ">
                                <label for="exampleInputName2 ">&nbsp;&nbsp;应收金额:￥</label>
                                <input type="text" class="form-control " id="money" placeholder="请输入应收金额 ">
                            </div>

                            <div class="form-group lines">
                                <label for="exampleInputName2 ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*结算类型:&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                <select class="form-control" id="exampleInputName1"  NAME="st_id">
                                    <option>===请选择结算类型===</option>
                                    <c:forEach items="${jiesuanlist}" var="list">
                                        <option value="${list.pt_name}">${list.pt_name}</option>
                                    </c:forEach>
                                </select>
                            </div>

                            <div class="form-group lines ">
                                <label for="exampleInputName2 ">医疗类型:&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                <select class="form-control" id="exampleInputName22" name="mt_id">
                                    <option>===请选择医疗类型===</option>
                                    <c:forEach items="${yiliaolist}" var="list">
                                        <option value="${list.mt_name}">${list.mt_name}</option>
                                    </c:forEach>
                                </select>
                            </div>


                            <div class="form-group lines ">
                                <label for="exampleInputName2 ">&nbsp;*号&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别:&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                <select class="form-control" id="exampleInputName3" >
                                    <option>===请选择号别类型===</option>
                                    <c:forEach items="${haobielist}" var="list">
                                        <option value="${list.nt_name}">${list.nt_name}</option>
                                    </c:forEach>
                                </select>
                            </div>

                            <div class="form-group lines ">
                                <label for="exampleInputName2 ">*挂号科室:&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                <select class="form-control input" id="d_id" >
                                    <option>===请选择科室类型===</option>
                                    <c:forEach items="${keshilist}" var="list">
                                        <option value="${list.d_name}" class="form-control ">${list.d_name}</option>
                                    </c:forEach>
                                </select>
                            </div>

<%--                            <div class="form-group lines ">--%>
<%--                                <label for="exampleInputName2 ">&nbsp;&nbsp;看诊医生</label>--%>
<%--                                <select class="form-control " id="do_id ">--%>
<%--                                    <c:forEach items="${yishenglist}" var="list">--%>
<%--                                        <option>====请选择看诊医生====</option>--%>
<%--                                        <option>老中医</option>--%>
<%--                                        <option>华佗</option>--%>
<%--                                        <option>李时珍</option>--%>
<%--                                        <option>李专医生</option>--%>
<%--                                        <option>李红医生</option>--%>
<%--                                        <option>周航医生</option>--%>
<%--                                        <option>棒棒医生</option>--%>
<%--                                    </c:forEach>--%>
<%--                                </select>--%>
<%--                            </div>--%>

                            <div class="form-group lines ">
                                <label for="exampleInputName2 ">挂号来源:&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                <select class="form-control" id="exampleInputName6">
                                    <option>===请选择挂号来源===</option>
                                    <option>电话预约</option>
                                    <option>微信摇一摇</option>
                                    <option>窗口挂号</option>
                                </select>
                            </div>
                        </form>
                    </div>
                </div>
        </div>
        </section>
    </div>
    <!--病历end-->
    <!--start挂号信息列表-->
    <div class="col-lg-12">
        <div class="card">
            <div class="card-close">
                <div class="dropdown">
                    <button type="button" class="btn btn-round btn-warning" data-toggle="modal" data-target=".bs-example-modal-lg"><img src="img/upd.png" alt="out" class="my-input-img-out"/>更新发票号</button>
<%--                    <button type="button" id="closeCard3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>--%>
<%--                    <div aria-labelledby="closeCard3" class="dropdown-menu dropdown-menu-right has-shadow">--%>
<%--                        <a href="#" class="dropdown-item "> <i class="fa fa-refresh"></i>刷新</a>--%>
<%--                        <a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a>--%>
<%--                    </div>--%>

                </div>
            </div>
            <div class="card-header d-flex align-items-center">
                <h3 class="h4">挂号信息列表</h3>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-striped table-hover">
                        <thead>
                        <tr>
                            <th>
                                <input type='checkbox' name='checkbox' />
                            </th>
                            <th>病历号 </th>
                            <th>姓名</th>
                            <th>性别 </th>
                            <th>出生日期 </th>
                            <th>身份证号 </th>
                            <th>发票号 </th>
                            <th>结算类别 </th>
                            <th>挂号级别 </th>
                            <th>挂号日期 </th>
                            <th>看诊日期 </th>
                            <th>是否已诊 </th>
                            <th>状态 </th>
                            <th>实收费用 </th>
                            <th>看诊科室 </th>
                        </tr>
                        </thead>
                        <tbody id="body">



                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <!--end挂号信息列表-->
    <!--模态窗Start-->
    <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header"style="text-align: center">
                    <h4 class="modal-title" id="myModalLabel1" style="text-align: center">添加药品</h4>
                </div>
<%--                <div class="modal-header">--%>
<%--                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>--%>
<%--                </div>--%>
                <!-- Breadcrumb-->
<%--                <div class="breadcrumb-holder container-fluid">--%>
<%--                    <ul class="breadcrumb">--%>
<%--                        <li class="breadcrumb-item">--%>
<%--                            <a href="#">门诊管理</a>--%>
<%--                        </li>--%>
<%--                        <li class="breadcrumb-item active">门诊挂号 </li>--%>
<%--                        <li class="breadcrumb-item active">修改信息 </li>--%>
<%--                    </ul>--%>
<%--                </div>--%>
                <!--*病历start-->
                <div class="forms">
<%--                    <div class="container-fluid">--%>
<%--                        <div class="row">--%>
<%--                            <i>挂号信息</i>--%>
                            <form class="form-inline">
                                <input type="hidden" class="form-control" id="u_id1">
                                <div class="col-md-12">
                                    <div class="pull-left">
                                        <div class="form-group row">
                                            <div class="input-group">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group lines">
                                    <label for="exampleInputName2">&nbsp;&nbsp;姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名:&nbsp;&nbsp;</label>
                                    <input type="email" class="form-control" id="u_name1" placeholder="请输入姓名">
                                </div>
                                <div class="form-group lines">
                                    <label for="exampleInputName2">&nbsp;&nbsp;性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别:&nbsp;&nbsp;</label>
                                    <input type="email" class="form-control" id="u_sex1" placeholder="请输入性别">
                                </div>
                                <div class="form-group lines">
                                    <label for="exampleInputName2">&nbsp;&nbsp;年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;龄:&nbsp;&nbsp;</label>
                                    <input type="email" class="form-control" id="u_age1" placeholder="请输入年龄">
                                </div>
                                <div class="form-group lines ">
                                    <label for="exampleInputName2 ">&nbsp;&nbsp;出生日期:&nbsp;&nbsp;</label>
                                    <input type="email " class="form-control " id="u_date1" placeholder="请输入出生日期 ">
                                </div>
                                <div class=" form-group lines ">
                                    <label for="exampleInputName2 ">&nbsp;&nbsp;医疗证号:&nbsp;&nbsp;</label>
                                    <input type="email " class="form-control " id="u_medicine_number1" placeholder="请输入医疗证号">

                                </div>
                                <div class="form-group lines ">
                                    <label for="exampleInputName2 ">&nbsp;&nbsp;身份证号:&nbsp;&nbsp;</label>
                                    <input type="email " class="form-control " id="u_id_number1" placeholder="请输入身份证号 ">
                                </div>
                                <div class="form-group lines ">
                                    <label for="exampleInputName2 ">&nbsp;&nbsp;家庭住址:&nbsp;&nbsp;</label>
                                    <input type="email " class="form-control " id="u_adder1" placeholder="请输入家庭住址">
                                </div>
                                <div class="form-group lines ">
                                    <label for="exampleInputName2 ">&nbsp;&nbsp;看诊日期:&nbsp;&nbsp;</label>
                                    <input type="email " class="form-control " id="exampleInputName2 " placeholder="请输入看诊日期 ">
                                </div>
                                <div class="form-group lines ">
                                    <label for="exampleInputName2 ">&nbsp;&nbsp;应收金额:&nbsp;&nbsp;</label>
                                    <input type="email " class="form-control " id="exampleInputName2 " placeholder="请输入应收金额 ">
                                </div>
                                <div class="form-group lines">
                                    <label for="exampleInputName2">&nbsp;&nbsp;结算类型:&nbsp;&nbsp;</label>
                                    <select class="form-control" id="exampleInputName2 ">
                                        <option>===请选择结算类型===</option>
                                        <option>自付</option>
                                        <option>医保</option>
                                        <option>他付</option>
                                    </select>
                                </div>
                                <div class="form-group lines ">
                                    <label for="exampleInputName2 ">&nbsp;&nbsp;医疗类型:&nbsp;&nbsp;</label>
                                    <select class="form-control" id="exampleInputName2 ">
                                        <option>===请选择医疗类型===</option>
                                        <option>市民</option>
                                        <option>军人</option>
                                        <option>公务员</option>
                                    </select>

                                </div>
                                <div class="form-group lines ">
                                    <label for="exampleInputName2 ">&nbsp;&nbsp;号&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别:&nbsp;&nbsp;</label>
                                    <select class="form-control" id="exampleInputName2 ">
                                        <option>===请选择号别类型===</option>
                                        <option>普通</option>
                                        <option>专家</option>
                                    </select>
                                </div>
                                <div class="form-group lines ">
                                    <label for="exampleInputName2 ">&nbsp;&nbsp;挂号科室:&nbsp;&nbsp;</label>
                                    <select class="form-control" id="exampleInputName2 ">
                                        <option>===请选择挂号科室===</option>
                                        <option>内科</option>
                                        <option>外科</option>
                                    </select>

                                </div>
                                <div class="form-group lines ">
                                    <label for="exampleInputName2 ">&nbsp;&nbsp;看诊医生:&nbsp;&nbsp;</label>
                                    <select class="form-control" id="exampleInputName2 ">
                                        <option>===请选择看诊医生===</option>
                                        <option>隔壁老陈</option>
                                        <option>隔壁富婆</option>
                                        <option>隔壁小姐姐</option>
                                    </select>
                                </div>
                                <div class="form-group lines ">
                                    <label for="exampleInputName2 ">&nbsp;&nbsp;挂号来源:&nbsp;&nbsp;</label>
                                    <select class="form-control" id="exampleInputName2 ">
                                        <option>===请选择挂号来源===</option>
                                        <option>电话预约</option>
                                        <option>微信摇一摇</option>
                                        <option>窗口挂号</option>
                                    </select>
                                </div>
                                <div class="tables-update-div" style="text-align: center">
                                    <button type="reset" class="btn btn-default tables-update-div-button-reset ">重置</button>
                                    <button type="submit " class="btn btn-warning  tables-update-div-button-submit">修改</button>
                                </div>
                            </form>
<%--                        </div>--%>
<%--                    </div>--%>
                </div>
                </section>
            </div>
        </div>
    </div>
</div>
<!--模态窗end-->

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
<script src="My97DatePicker/WdatePicker.js"></script>
<!-- 通过身份证显示信息-->
<script>
    $(function () {
        /*清屏*/
        $("#cleanScreen").click(
            function () {
                window.location.reload();
            });
        $(".inputout").focusout(
            function () {
                //  var ins=$(".inputout").val();
                //alert(ins);
                $.ajax({
                    type:"post",
                    url:"UsersSelectServlet",
                    dataType:"json",
                    data:"u_id_number="+$(".inputout").val(),
                    success:function (se) {
                        $("#u_id").val(se.se.u_id);
                        $("#u_name").val(se.se.u_name);
                        $("#u_sex").val(se.se.u_sex);
                        $("#u_age").val(se.se.u_age);
                        $("#u_medicine_number").val(se.se.u_medicine_number);
                        $("#u_date").val(se.se.u_date);
                        $("#u_id_number").val(se.se.u_id_number);
                        $("#u_adder").val(se.se.u_adder);

                    }
                });
            }
        );

        $("#add_number_message").click(function (){
            var u_id=$("#u_id").val();
            var u_name=$("#u_name").val();
            var u_sex=$("#u_sex").val();
            var u_age=$("#u_age").val();
            var u_medicine_number=$("#u_medicine_number").val();
            var u_date=$("#u_date").val();
            var u_id_number=$("#u_id_number").val();
            var u_adder=$("#u_adder").val();
            var ns_consult_dateString =$("#kanzhendate").val();
            // alert(ns_consult_dateString);
            var money=$("#money").val();
            var exampleInputName1=$("#exampleInputName1").val();
            var exampleInputName22=$("#exampleInputName22").val();
            var exampleInputName3=$("#exampleInputName3").val();
            var ns_d_id=$("#d_id").val();
            var exampleInputName6=$("#exampleInputName6").val();
            $.ajax({
                    type:"post",
                    url:"EnsureGuaHaoServlet",
                    dataType:"json",
                    data:{"n_u_id":u_id,
                        "n_u_name":u_name,
                        "n_u_sex":u_sex,
                        "n_u_age":u_age,
                        "n_u_medicine_number":u_medicine_number,
                        "n_u_date":u_date,
                        "n_u_id_number":u_id_number,
                        "n_u_adder":u_adder,
                        "kanzhendate":ns_consult_dateString,
                        "money":money,
                        "jiesuantype": exampleInputName1,
                        "yiliaotype":exampleInputName22,
                        "haobietype":exampleInputName3,
                        "keshitype":ns_d_id,
                        "laiyuantype":exampleInputName6
                    },
                    success: function(data) {
                        var  str;
                        for(var i=0;i<data.masege.length;i++){
                            str+= "<tr> <th> <input type='checkbox' name='checkbox' value='data.masege[i].n_u_id'/> </th>"+
                                " <th scope='row'>"+data.masege[i].n_u_id+"</th>"+
                                "  <td>"+data.masege[i].n_u_name+"</td>"+
                                "  <td>"+data.masege[i].n_u_sex+"</td>"+
                                "  <td>"+data.masege[i].n_u_date+"</td>"+
                                "   <td>"+data.masege[i].n_u_id_number+"</td>"+
                                "   <td>"+data.masege[i].mssage_id+"</td>"+
                                "  <td>"+data.masege[i].jiesuantype+"</td>"+
                                "  <td>"+data.masege[i].haobietype+"</td>"+
                                "   <td>"+data.masege[i].ns_numbet_date+"</td>"+
                                "   <td>"+data.masege[i].kanzhendate+"</td>"+
                                "  <td>“否”</td>"+
                                "   <td>“否”</td>"+
                                "   <td>“已结”</td>"+
                                "   <td>"+data.masege[i].keshitype+"</td> </tr>";
                        }
                        $("#body").append(str);
                    }
                }
            )
        })
    })

</script>
<!-- 挂号信息获取-->







</body>

</html>