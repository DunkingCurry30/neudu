
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/5
  Time: 15:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                    <h5>&nbsp;&nbsp;&nbsp;&nbsp;门诊退费</h5>
            </div>
            <!--*病历start-->
            <section class="forms">
                <div class="container-fluid">
                    <div class="row">
<%--                        <i>单据信息</i>--%>
                        <form class="form-inline">

                            <div class="col-md-12">
                                <div class="pull-left">
                                    <div class="form-group row">
<%--                                        <div class="input-group">--%>
<%--                                            <div class="input-group-prepend">--%>
                                                <a>&nbsp;&nbsp;&nbsp;&nbsp;</a>
                                                <button  type="button" class="btn btn-own">选择查询单据号</button>
                                                <input type="text" id="p_id" class="form-control paymentOut">
<%--                                            </div>--
<%--                                        </div>--%>

                                    </div>
                                </div>
                                <div class="pull-right" style="margin-top: 10px;">
                                    <button  type="button" href="#" id="searchCharge" class="btn btn-round btn-info" data-target=".bs-example-modal-lg">查询收费项目</button>
                                    <button type="button" href="#" id="cleanScreen" class="btn btn-round btn-default" data-target=".bs-example-modal-lg">清屏 </button>
                                </div>
                            </div>

                            <div class="form-group lines">
                                <label for="u_name">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;患者姓名:&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                <input type="text" class="form-control" id="u_name"  readonly>
                            </div>
                            <div class="form-group lines">
                                <label for="pt_name">&nbsp;&nbsp;结算类别:&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                <input type="text" class="form-control" id="pt_name"  readonly>
                            </div>
                            <div class="form-group lines">
                                <label for="p_total_money">&nbsp;&nbsp;总计金额:￥</label>
                                <input type="text" class="form-control" id="p_total_money" readonly>
                            </div>
                            <div class="form-group lines">
                                <label for="p_money">&nbsp;&nbsp;实付金额:￥</label>
                                <input type="text" class="form-control" id="p_money" readonly>
                            </div>
                            <div class="form-group lines ">
                                <label for="p_money1"></label>
                                <input type="text" class="form-control " style="visibility: hidden" readonly>
                            </div>
                            <div class="form-group lines ">
                                <label for="p_money1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;现金支付:￥</label>
                                <input type="text" class="form-control " id="p_money1"  readonly>
                            </div>

                            <div class="form-group lines ">
                                <label for="p_money2">&nbsp;&nbsp;账户支付:￥</label>
                                <input type="text" class="form-control " id="p_money2"  readonly>
                            </div>
                            <div class="form-group lines ">
                                <label for="p_return_money">&nbsp;&nbsp;报销金额:￥</label>
                                <input type="text" class="form-control " id="p_return_money" readonly>
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
                    <button type="button" href="#" id="save" class="btn btn-success btn-round" data-target=".bs-example-modal-lg"><img src="img/insert.png" alt="out" class="my-input-img-out"/>保存 </button>
                    <button type="button" href="#" id="selectAll" class="btn btn-round btn-danger" data-target=".bs-example-modal-lg"><img src="img/out.png" alt="out" class="my-input-img-out"/>全退 </button>
<%--                    <button type="button" href="#" id="cleanScreen" class="btn btn-round btn-default" data-target=".bs-example-modal-lg"><img src="img/qingping.png" alt="out" class="my-input-img-out"/>清屏 </button>--%>
<%--                    <button type="button" id="closeCard3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>--%>
<%--                    <div aria-labelledby="closeCard3" class="dropdown-menu dropdown-menu-right has-shadow">--%>
<%--                        <a href="#" class="dropdown-item "> <i class="fa fa-refresh"></i>刷新</a>--%>
<%--                        <a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a>--%>
<%--                    </div>--%>

                </div>
            </div>
            <div class="card-header d-flex align-items-center">
                <h3 class="h4">收费明细</h3>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table id="myTable" class="table table-striped table-hover">
                        <thead>
                        <tr>
                            <th>请选择</th>
                            <th>项目名称 </th>
                            <th>规格 </th>
                            <th>优惠前单价 </th>
                            <th>优惠后单价 </th>
                            <th>开立数量 </th>
                            <th>单位 </th>
                            <th>可退数量 </th>
                            <th>是否退费 </th>
                            <th>退费金额 </th>
                            <th>优惠后退费金额 </th>
                            <th>发药标识 </th>

                        </tr>
                        </thead>
                        <tbody id="tbodyS">


                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <!--end挂号信息列表-->

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
<script>
    $(function() {
        /*清屏*/
        $("#cleanScreen").click(function () {
            window.location.reload();
        });
        /**
         * 通过单据编号查询发票信息
         */
        $(".paymentOut").focusout(
            function () {
                // alert($(".paymentOut").val());
                $.ajax({
                    type: "post",
                    url: "RefundDataServlet",
                    dataType: "json",
                    data: "p_id=" + $(".paymentOut").val(),
                    success: function (date) {
                        // 1234
                        if (date.date == null)
                            alert("没有查询到单据信息！")
                        $("#p_id").val(date.date.p_id);
                        $("#p_total_money").val(date.date.p_total_money);
                        $("#pt_name").val(date.date.pt_name);
                        $("#p_money").val(date.date.p_money);
                        $("#p_money1").val(date.date.p_money1);
                        $("#p_money2").val(date.date.p_money2);
                        $("#p_return_money").val(date.date.p_return_money);
                        $("#u_name").val(date.date.u_name);
                        $("#pt_name").val(date.date.pt_name);

                    }
                })
            }
        )
        //查询收费项目信息
        $("#searchCharge").click(
            function () {
                $.ajax({
                        type: "post",
                        url: "RefundChargeServlet",
                        dataType: "json",
                        data: "p_id=" + $(".paymentOut").val(),
                        success: function (data) {
                            // alert(11)
                            $("#tbodyS").empty();

                            for (var i = 0; i < data.base.length; i++) {
                                var str = "<tr><td><input name=\"all\" type=\"checkbox\"" +
                                    "value=\""+data.base[i].c_id+"\"/></td>" +
                                    "<td >" + data.base[i].c_name + "</td>" +
                                    "<td >" + data.base[i].c_format + "</td>" +
                                    "<td>￥" + data.base[i].c_before_price + "</td>" +
                                    "<td>￥" + data.base[i].c_after_price + "</td>" +
                                    "<td>" + data.base[i].c_amount + "</td>" +
                                    "<td>" + data.base[i].c_unit + "</td>" +
                                    "<td>" + data.base[i].c_return_amount + "</td>" +
                                    "<td>" + data.base[i].c_set_return_amount + "</td>" +
                                    "<td>￥" + data.base[i].c_return_price + "</td>" +
                                    "<td>￥" + data.base[i].c_after_return_price + "</td>" +
                                    "<td>" + data.base[i].c_mark + "</td></tr>";

                                // }
                                // alert(str);
                                $("#tbodyS").append(str);
                            }
                        }
                    }
                )
            })
        /**
         * 退费保存
         */
        $("#save").click(function () {
                // $.each($('input:checkbox:checked'),function () {
                //         alert("你选了"+
                //             $('input:checkbox:checked').length+"个,其中有"+$(this).val())
                //     }
                // )
            function deleteRow(r) {
                var i=r.parentNode.parentNode.rowIndex;
                document.getElementById('myTable').deleteRow(i);
            }
            var checkbox=[];
            $.each($('input:checkbox:checked'),function () {
                if($(this).prop("checked")==true){
                    checkbox.push($(this).val());
                    deleteRow(this);
                }
            })
            // alert(checkbox.valueOf());
            //转数组为字符串
            var arr = checkbox.join(';');
            // alert(arr);
            $.ajax({type: "post",
                    url: "RefundReturnServlet",
                    dataType: "json",
                    data: {"checkbox":arr},
                    success: function (data) {
                        if(data.pdd !="")
                            alert("已成功退费")
                        else alert("您还未选择任何退费项目！")
                }
                }
            )

        }
        )
        $("#selectAll").click(function () {
            // alert(11)
            $('input[name="all"]').prop('checked','true');
        })
    })
</script>
<button class="btn-p"></button>
</body>

</html>
