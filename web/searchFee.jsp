<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/5
  Time: 15:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link rel="stylesheet" href="css/jquery-confirm.min.css">
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
                <h5>&nbsp;&nbsp;&nbsp;&nbsp;门诊收费 </h5>
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
                                        <div class="pull-left">
                                            <a>&nbsp;&nbsp;&nbsp;</a>
                                            <button  type="button" class="btn btn-own">选择查询单据号</button>
                                            <input type="text" id="p_id" class="form-control paymentOut">
                                        </div>
                                    </div>
                                </div>
                                <div class="pull-right" style="margin-top: 10px;">
<%--                                    <a href="#" id="rePrint"><span class="label label-default"><img src="img/piao.png" alt="out" class="my-input-img"/>发票重打</span></a>--%>
                                         <button type="button" href="#" id="paymentAccount" class="btn btn-success btn-round"  data-toggle="modal" data-target="#paymentWindows">收费结算</button>
                                         <button href="#" id="cleanScreen" class="btn btn-round btn-default">清屏</button>
                                </div>
                            </div>
                            <div class="form-group lines">
                                <label for="exampleInputName3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名:&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                <input type="text" class="form-control" id="u_name" placeholder="请输入姓名" readonly>
                            </div>
                            <div class="form-group lines">
                                <label for="exampleInputName">&nbsp;&nbsp;性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别:&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                <input type="text" class="form-control" id="u_sex" placeholder="请输入性别"readonly>
                            </div>
                            <div class="form-group lines">
                                <label for="exampleInputName2">&nbsp;&nbsp;年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;龄:&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                <input type="text" class="form-control" id="u_age" placeholder="请输入年龄"readonly>
                            </div>
                            <div class=" form-group lines ">
                                <label for="exampleInputName2 ">&nbsp;&nbsp;医疗证号:&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                <input type="text " class="form-control " id="u_medicine_number" placeholder="请输入医疗证号"readonly>

                            </div>
                            <div class=" form-group lines ">
                                <label for="exampleInputName2 "></label>
                                <input type="text " class="form-control "  style="visibility: hidden" placeholder="请输入医疗证号"readonly>

                            </div>
                            <div class="form-group lines ">
                                <label for="exampleInputName2 ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;身份证号:&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                <input type="text " class="form-control " id="u_id_number" placeholder="请输入身份证号 "readonly>
                            </div>
                            <div class="form-group lines ">
                                <label for="exampleInputName2 ">&nbsp;&nbsp;家庭住址:&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                <input type="text " class="form-control " id="u_address" placeholder="请输入家庭住址"readonly>
                            </div>
                            <div class="form-group lines ">
                                <label for="exampleInputName2 ">&nbsp;&nbsp;看诊日期:&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                <input type="text " class="form-control " id="rs_consult_date" placeholder="请输入看诊日期 "readonly>
                            </div>
                            <div class="form-group lines ">
                                <label for="exampleInputName2 ">&nbsp;&nbsp;挂号费用:￥</label>
                                <input type="text " class="form-control " id="rs_money" placeholder="请输入应收金额"readonly>
                            </div>
                        </form >
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-close">
                                    <div class="dropdown">
<%--                                        <button type="button" href="#" id="update" class="label label-success" data-target=".bs-example-modal-lg"><img src="img/qingping.png" alt="out" class="my-input-img-out"/>更新信息 </button>--%>
                                        <button type="button" href="#" id="addDrugs" class="btn btn-round btn-warning"  data-toggle="modal" data-target="#addDrugWindows"><img src="img/insert.png" alt="out" class="my-input-img-out"/>添加药品</button>
                                        <button type="button" href="#" id="deleteDrugs" class="btn btn-round btn-danger" data-target=".bs-example-modal-lg"><img src="img/out.png" alt="out" class="my-input-img-out"/>删除药品 </button>
<%--                                        <button type="button" id="closeCard3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>--%>
<%--                                        <div aria-labelledby="closeCard3" class="dropdown-menu dropdown-menu-right has-shadow">--%>
<%--                                            <a href="#" class="dropdown-item "> <i class="fa fa-refresh"></i>刷新</a>--%>
<%--                                            <a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a>--%>
<%--                                        </div>--%>

                                    </div>
                                </div>
                                <div class="card-header d-flex align-items-center">
                                    <h3 class="h4">收费项目</h3>
                                </div>


                                <table class="table table-striped table-hover" id="myTable">
                                     <thead>
                                     <tr><th>请选择</th>
                                         <th>项目名称 </th>
                                         <th>规格 </th>
                                         <th>单价 </th>
                                         <th>开立数量 </th>
                                         <th>单位 </th>
                                         <th>总金额</th></tr>
                                    </thead>
                                  <tbody id="tbodyS">

                                  </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
    <!--end挂号信息列表-->

<!--添加药品模态窗Start-->
            <div class="modal fade fade bs-example-modal-sm"  id="addDrugWindows" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
<%--            <div class="modal-header">--%>
<%--                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>--%>
<%--            </div>--%>
             <div class="modal-header"style="text-align: center">
               <h4 class="modal-title" id="myModalLabel1" style="text-align: center">添加药品</h4>
             </div>
            <!--*药品start-->
            <section class="forms">
<%--                <div class="container-fluid">--%>
<%--                    <div class="row">--%>
<%--                        <i>添加药品信息</i>--%>
                        <form class="form-inline">

<%--                            <div class="col-md-12">--%>
<%--                                <div class="pull-left">--%>
<%--                                    <div class="form-group row">--%>
<%--                                        <div class="input-group"></div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
                            <div class="form-group lines">
                                <label for="exampleInputName">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;项目名称:&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                <select class="form-control drugSelect" id="selectDrug">
                                    <option>===请选择项目名称===</option>
                                    <c:forEach items="${DrugList}" var="drugs">
                                        <option value="${drugs.dr_id}">${drugs.dr_name}</option>
                                    </c:forEach>
                                </select>
                            </div>

                            <div class="form-group lines">
                                <label for="exampleInputName2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;规&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;格:&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                <input type="text" class="form-control" readonly id="dr_format" placeholder="">
                                <input type="hidden" class="form-control" readonly id="dr_id" placeholder="">
                            </div>
                            <div class="form-group lines">
                                <label for="exampleInputName2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;单&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;价:&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                <input type="text" class="form-control"  readonly id="dr_money" placeholder="">
                            </div>
                            <div class="form-group lines ">
                                <label for="exampleInputName2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;单&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;位:&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                <input type="text " class="form-control "  readonly id="dr_unit" placeholder="">
                            </div>
                            <div class="form-group lines">
                                <label for="exampleInputName2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*数&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;量:&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                <input type="text" class="form-control " id="dr_amount" placeholder="请输入数量">
                            </div>
                            <input type="hidden" class="form-control " id="dr_total_money">
                            <div class="tables-update-div" style="text-align: center">
                                <button type="button" href="#" id="add_drugs" class="btn btn-round btn-warning">添加药品</button>
                                <button type="reset" class="btn btn-round btn-default tables-update-div-button-reset ">重置</button>
                            </div>
                        </form>
<%--                    </div>--%>
<%--                </div>--%>
            </section>
        </div>
    </div>
</div>
<%--收费结算模态窗--%>
            <div class="modal fade fade bs-example-modal-sm"  id="paymentWindows" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
                <div class="modal-dialog modal-sm" role="document">
                    <div class="modal-content">
<%--                        <div class="modal-header">--%>
<%--                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>--%>
<%--                        </div>--%>
                        <!-- Breadcrumb-->
<%--                        <div class="breadcrumb-holder container-fluid">--%>
<%--                            <ul class="breadcrumb">--%>
<%--                                <li class="breadcrumb-item">--%>
<%--                                    <a href="#">门诊管理</a>--%>
<%--                                </li>--%>
<%--                                <li class="breadcrumb-item active">门诊收费 </li>--%>
<%--                                <li class="breadcrumb-item active">收费结算 </li>--%>
<%--                            </ul>--%>
<%--                        </div>--%>
                        <!--*药品start-->
                <div class="modal-header"style="text-align: center">
<%--                   <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>--%>
                      <h4 class="modal-title" id="myModalLabel" style="text-align: center">收费结算</h4>
                </div>
                        <section class="forms">
                            <div class="container-fluid">
                                <div class="row">
<%--                                    <i>收费结算</i>--%>
                                    <form class="form-inline">

                                        <div class="col-md-10">
                                            <div class="pull-left">
                                                <div class="form-group row">
                                                    <div class="input-group"></div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group lines">
                                            <label for="exampleInputName">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;结算类型:&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                            <select class="form-control" id="selectAccountType">
                                                <option>====请选择结算名称====</option>
                                                <c:forEach items="${PaymentTypeList}" var="payments">
                                                    <option value="${payments.pt_mark}">${payments.pt_name}</option>
                                                </c:forEach>
                                            </select>
                                        </div>

                                        <div class="form-group lines">
                                            <label for="exampleInputName">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;支付类型:&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                            <select class="form-control" id="selectPaymentType">
                                                <option>====请选择支付类型====</option>
                                                <option>账户支付</option>
                                                <option>现金支付</option>
<%--                                                <option>微信/支付宝支付</option>--%>
                                            </select>
                                        </div>
                                        <div class="form-group lines">
                                            <label for="exampleInputName2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;共计金额:&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                            <input type="text" class="form-control"  readonly id="p_total_money" placeholder="">
                                        </div>
                                        <div class="tables-update-div" style="text-align: center">
                                            <button type="button" href="#" id="PaymentConfirm" class="btn btn-round btn-warning">确认支付</button>
                                            <button type="button" href="#" id="cancel" class="btn  btn-round btn-default">取消</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </section>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
<!-- JavaScript files-->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/popper.js/umd/popper.min.js">
</script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="vendor/jquery.cookie/jquery.cookie.js"></script>
<script src="vendor/chart.js/Chart.min.js"></script>
<script src="vendor/jquery-validation/jquery.validate.min.js"></script>
<!-- Main File-->
<script src="js/front.js"></script>
    <script src="js/jquery-confirm.min.js"></script>
</body>
<script>
    $(function() {
        /*清屏*/
        $("#cleanScreen").click(
            function () {
                window.location.reload();
            });
        /**
         * 通过单据编号查询挂号信息
         */
        $(".paymentOut").focusout(
            function () {
                // alert($(".paymentOut").val());
                $.ajax({
                    type: "post",
                    url: "SearchFeeDataServlet",
                    dataType: "json",
                    data: "p_id=" + $(".paymentOut").val(),
                    success: function (date) {
                        // 1234

                        $("#u_name").val(date.number_message.n_u_name);
                        $("#u_sex").val(date.number_message.n_u_sex);
                        $("#u_age").val(date.number_message.n_u_age);
                        $("#u_medicine_number").val(date.number_message.n_u_medicine_number);
                        $("#u_id_number").val(date.number_message.n_u_id_number);
                        $("#u_address").val(date.number_message.n_u_adder);
                        $("#rs_consult_date").val(date.number_message.kanzhendate);
                        $("#rs_money").val(date.number_message.money);
                    }
                })
            }
        )
        //添加药品模态窗信息
        $("#selectDrug").change(
            function () {
                var options = $("#selectDrug option:selected");
                var drug_name = options.text();
                // alert(drug_name),
                $.ajax({
                    type: "post",
                    url: "SearchFeeAddServlet",
                    dataType: "json",
                    data: "dr_name=" + drug_name,
                    success: function (data) {
                        // alert(11)

                        $("#dr_unit").val(data.drug_lists.dr_unit);
                        $("#dr_money").val(data.drug_lists.dr_money);
                        $("#dr_format").val(data.drug_lists.dr_format);
                        $("#dr_id").val(data.drug_lists.dr_id);
                    }
                })
            }
        )

        /**
         * 添加药品记录
         */
        $("#add_drugs").click(function () {
                // 将数量和金额转换为浮点数计算
                var amount = parseInt($("#dr_amount").val());
                var money = parseFloat($("#dr_money").val());
                $("#dr_total_money").val(amount*money);

                var options = $("#selectDrug option:selected");
                var drug_name = options.text();

                var str="";

                var str = "<tr><td><input name=\"all\" type=\"checkbox\"" + "value=\"" + drug_name + "\"/></td>" +
                    "<td >" + drug_name + "</td>" +
                    "<td >" + $("#dr_format").val() + "</td>" +
                    "<td >" + $("#dr_money").val() +"</td>" +
                    "<td >" + $("#dr_amount").val() + "</td>" +
                    "<td >" + $("#dr_unit").val() + "</td>" +
                    "<td>" + $("#dr_total_money").val()+"</td></tr>";
                $("#tbodyS").append(str);
                //点击添加后关闭模态窗

                $("#addDrugWindows").modal("hide");
                $("#dr_amount").val("");
                $("#dr_unit").val("");
                $("#dr_format").val("");
                $("#dr_money").val("");
                $("#selectDrug").selectedIndex = 0;
                })
            })
          /**
           * 删除药品信息
           */
        $("#deleteDrugs").click(function () {
            // $.each($('input:checkbox:checked'),function () {
            //         alert("你选了"+
            //             $('input:checkbox:checked').length+"个,其中有"+$(this).val())
            //     }
            // )
            function deleteRow(r)
            {
                var i=r.parentNode.parentNode.rowIndex;
                document.getElementById('myTable').deleteRow(i);
            }
            $.each($('input:checkbox:checked'),function () {
                if($(this).prop("checked")==true){
                    deleteRow(this);
                }
            })
        })
    /**
     * 收费结算
     */
    $("#paymentAccount").click(function () {
            //全选
            $('input[name="all"]').prop('checked','true');

            var checkbox=[];
            $.each($('input:checkbox:checked'),function () {
                if($(this).prop("checked")==true){
                    var drugs = []
                    //获取选中行的信息
                    for(var i=1;i<7;i++) {
                        drugs.push(this.parentElement.parentElement.children[i].innerHTML);
                        drugs.join(",");
                    }
                    checkbox.push(drugs);
                }
            })
            // alert(checkbox.valueOf());
            //转数组为字符串
            // var payment_list = checkbox.join(';');
            var p_total_money = 0;
            // alert(checkbox)
            // alert(payment_list);
            $("#selectAccountType").change(
                function () {
                    //获取结算类型
                    // var options = $("#selectAccountType option:selected");
                    // var payment_type = options.text();
                    var pt_mark = this.value;

                    var discount = 0;
                    if(pt_mark==0)
                    {
                        discount = 0.4;
                    }
                    else if(pt_mark==2)
                    {
                        discount = 0.3;
                    }
                    else if(pt_mark==1)
                    {
                        discount = 1;
                    }

                    // alert(checkbox[0][5])
                    var p_total_money = 0;
                    for(var i=0;i<checkbox.length;i++) {
                        p_total_money += parseFloat(checkbox[i][5]);
                        checkbox[i].push(discount);
                        // alert(parseFloat(checkbox[i][5]))
                    }
                    //优惠后金额
                    var p_after_money = p_total_money+ parseFloat($("#rs_money").val());
                    // alert(p_after_money)
                    $("#p_total_money").val(p_after_money*discount);

                }
            )
           /**
             * 收费模态窗中的取消按钮
             */
            $("#cancel").click(function () {
                $("#paymentWindows").modal("hide");
            })
          /**
           * 收费模态窗中的确认按钮
           */
            $("#PaymentConfirm").click(function () {
                // alert(payment_list)
                //添加字段discount,u_name,p_id
                var u_name = $("#u_name").val();
                var p_id = $(".paymentOut").val();
                var rs_money = $("#rs_money").val();
                var p_total_money = $("#p_total_money").val();
                // var $("#selectPaymentType").val()
                for(var i=0;i<checkbox.length;i++) {
                    checkbox[i].push(u_name);
                    checkbox[i].push(p_id);
                    checkbox[i].push(rs_money);
                    checkbox[i].push(p_total_money);
                    // alert(parseFloat(checkbox[i][5]))
                }
                // alert(checkbox)
                var arr = checkbox.join(';');
                $.ajax({type: "post",
                        url: "SearchFeeAccountServlet",
                        dataType: "json",
                        data: {"checkbox":arr},
                        success: function (data) {
                            alert("请确认支付完成")

                        }
                    }
                )
                $("#paymentWindows").modal("hide");

            })


        })
</script>
</html>