<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/5
  Time: 15:48
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
                <h5>&nbsp;&nbsp;&nbsp;&nbsp;门诊退号 </h5>
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
<%--                                                <button data-toggle="dropdown" type="button" class="btn btn-outline-secondary " >选择查询号</button>--%>
<%--                                                <!--		<div class="dropdown-menu">--%>
<%--                                                    <a href="#" class="dropdown-item">身份证号</a>--%>

<%--                                                </div>-->--%>
<%--                                            </div>--%>
<%--                                            <input type="text" class="form-control select">--%>

<%--                                        </div>--%>
                                        <a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
                                        <button data-toggle="dropdown" type="button" class="btn btn-own">选择查询号</button>
                                        <!--		<div class="dropdown-menu">
                                            <a href="#" class="dropdown-item">身份证号</a>
                                            <a href="#" class="dropdown-item">医保卡号 </a>
                                            <a href="#" class="dropdown-item">农合卡号</a>
                                            <a href="#" class="dropdown-item">健康卡号</a>
                                            <a href="#" class="dropdown-item">熙康卡号</a>
                                        </div>-->
                                        <%--                                            </div>--%>
                                        <input type="text" class="form-control select">

                                    </div>
                                </div>
                                <div class="pull-right pull-right-margin-top " style="margin-top: 10px;">
<%--                                    <a href="#"><span class="label label-default"><img src="img/out-money.png" alt="out" class="my-input-img"/>退费</span></a>--%>
                                    <a href="#"  id="add" class="btn btn-round btn-info">查询</a>
                                    <button href="#" id="cleanScreen" class="btn btn-round btn-default">清屏</button>
                                </div>
<%--                                <ul class="glyphs css-mapping ulli ">--%>
<%--                                    <li>--%>
<%--                                        <span><i class="icon icon-website"></i>身份证</span>--%>
<%--                                    </li>--%>
<%--                                </ul>--%>
                            </div>

                            <div class="form-group lines">
                                <label for="exampleInputName1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;病历编号:&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                <input type="text" class="form-control" id="n_u_id" readonly>
                            </div>

                            <div class="form-group lines">
                                <label for="exampleInputName2">&nbsp;&nbsp;姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名:&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                <input type="text" class="form-control" id="n_u_name" readonly>
                            </div>
                            <div class="form-group lines">
                                <label for="exampleInputName2">&nbsp;&nbsp;性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别:&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                <input type="text" class="form-control" id="n_u_sex" readonly>
                            </div>
                            <div class="form-group lines">
                                <label for="exampleInputName2">&nbsp;&nbsp;年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;龄:&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                <input type="text" class="form-control" id="n_u_age" readonly>
                            </div>
                            <div class="form-group lines ">
                                <label for="exampleInputName2 ">&nbsp;&nbsp;结算类别:&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                <input type="text " class="form-control " id="jiesuantype"readonly>
                            </div>
                            <div class=" form-group lines ">
                                <label for="exampleInputName2 ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;医疗证号:&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                <input type="text " class="form-control " id="n_u_medicine_number" readonly>

                            </div>
                            <div class=" form-group lines ">
                                <label for="exampleInputName2 ">&nbsp;&nbsp;医疗类别:&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                <input type="text " class="form-control " id="yiliaotype" readonly>

                            </div>
                            <div class="form-group lines ">
                                <label for="exampleInputName2 ">&nbsp;&nbsp;身份证号:&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                <input type="text " class="form-control " id="n_u_id_number" readonly>
                            </div>
                            <div class="form-group lines ">
                                <label for="exampleInputName2 ">&nbsp;&nbsp;家庭住址:&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                <input type="text " class="form-control " id="n_u_adder" readonly>
                            </div>
                            <div class="form-group lines ">
                                <label for="exampleInputName2 ">&nbsp;&nbsp;发&nbsp;&nbsp;票&nbsp;&nbsp;号:&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                <input type="text " class="form-control " id="mssage_id" readonly>
                            </div>

                        </form>
                    </div>
                </div>
        </div>
        </section>
    </div>
    <!--病历end-->

    <!--start挂号信息列表-->
    <section class="feeds no-padding-top">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-6  my-layui-layer-content">
                    <div class="card">
                        <div class="card-close">
                            <div class="dropdown">
                                <button type="submit" id="getCbx" onclick="getCbx" class="btn btn-round btn-danger"  data-target=".bs-example-modal-lg"><img src="img/out.png" alt="out" class="my-input-img-out"/>退号</button>
                                <button type="button" id="closeCard3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                                <div aria-labelledby="closeCard3" class="dropdown-menu dropdown-menu-right has-shadow">
<%--                                    <a href="#" class="dropdown-item "> <i class="fa fa-refresh"></i>刷新</a>--%>
                                    <a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a>
                                </div>
                            </div>
                        </div>
                        <div class="card-header d-flex align-items-center">
                            <h3 class="h4">挂号信息列表</h3>
                        </div>
                        <div class="card-body ">
                            <div class="table-responsive">
                                <table class="table table-striped table-hover" id="myTable">
                                    <thead>
                                    <tr>
                                        <th>请选择</th>
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
                                    <tbody   id="ams">


                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <!--start门诊收费明细-->

                    <!--end门诊收费明细-->

                </div>
                <!--end挂号信息列表-->

                <!--start挂号发票信息-->
                <div class="col-lg-6  ">
                    <div class="card">
                        <div class="card-close">
                            <div class="dropdown">
                                <button type="button" class="btn btn-round btn-warning"  data-target=".bs-example-modal-lg"><img src="img/out-money.png" alt="out" class="my-input-img"/>退费</button>
                                <button type="button" id="closeCard3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                                <div aria-labelledby="closeCard3" class="dropdown-menu dropdown-menu-right has-shadow">
                                    <%--                                    <a href="#" class="dropdown-item "> <i class="fa fa-refresh"></i>刷新</a>--%>
                                    <a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a>
                                </div>

                            </div>
                        </div>
                        <div class="card-header d-flex align-items-center">
                            <h3 class="h4">挂号发票信息</h3>
                        </div>
                        <div class="card-body ">
                            <div class="table-responsive">
                                <table class="table table-striped table-hover">
                                    <thead>
                                    <tr>
                                        <th>
                                            <input type="checkbox" />
                                        </th>
                                        <th>项目名称 </th>
                                        <th>药品标识</th>
                                        <th>项目状态</th>
                                        <th>单价 </th>
                                        <th>总金额 </th>
                                        <th>自费金额 </th>
                                        <th>自付金额 </th>
                                        <th>报销金额 </th>
                                        <th>实付金额 </th>
                                        <th>差额 </th>
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
                                        <td>2132223122125</td>
                                        <td>213222312212</td>
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
                                        <td>2132223122125</td>
                                        <td>213222312212</td>
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
                                        <td>2132223122125</td>
                                        <td>213222312212</td>
                                    </tr>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
<%--                    <div class="card">--%>
<%--                        <div class="card-close">--%>
<%--                            <div class="dropdown">--%>
<%--                                <button type="button" id="closeCard3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>--%>
<%--                                <div aria-labelledby="closeCard3" class="dropdown-menu dropdown-menu-right has-shadow">--%>
<%--                                    <a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a>--%>
<%--                                </div>--%>

<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="card-header d-flex align-items-center">--%>
<%--                            <h3 class="h4">挂号发票信息</h3>--%>
<%--                        </div>--%>
<%--                        <div class="card-body ">--%>
<%--                            <div class="table-responsive">--%>
<%--                                <form class="form-inline " >--%>
<%--                                    <div class="form-group lines my-from-margin-left ">--%>
<%--                                        <label for="exampleInputName1">票据种类:&nbsp;&nbsp;</label>--%>
<%--                                        <input type="text" class=" form-control "  id="exampleInputName1"readonly>--%>
<%--                                    </div>--%>

<%--                                    <div class="form-group lines my-from-margin-left">--%>
<%--                                        <label for="exampleInputName2">发&nbsp;&nbsp票&nbsp;&nbsp;号:&nbsp;&nbsp;</label>--%>
<%--                                        <input type="email" class="form-control" id="exampleInputName2" readonly>--%>
<%--                                    </div>--%>
<%--                                    <div class="form-group lines my-from-margin-left">--%>
<%--                                        <label for="exampleInputName2">总&nbsp;&nbsp;金&nbsp;&nbsp;额:&nbsp;&nbsp;</label>--%>
<%--                                        <input type="email" class="form-control" id="exampleInputName2" readonly>--%>
<%--                                    </div>--%>
<%--                                    <div class="form-group lines my-from-margin-left">--%>
<%--                                        <label for="exampleInputName2">自费金额:&nbsp;&nbsp;</label>--%>
<%--                                        <input type="email" class="form-control" id="exampleInputName2" readonly>--%>
<%--                                    </div>--%>
<%--                                    <div class="form-group lines my-from-margin-left">--%>
<%--                                        <label for="exampleInputName2 ">自付金额:&nbsp;&nbsp;</label>--%>
<%--                                        <input type="email " class="form-control " id="exampleInputName2 "readonly>--%>
<%--                                    </div>--%>
<%--                                    <div class=" form-group lines  my-from-margin-left">--%>
<%--                                        <label for="exampleInputName2 ">报销金额:&nbsp;&nbsp;</label>--%>
<%--                                        <input type="email " class="form-control " id="exampleInputName2 " readonly>--%>

<%--                                    </div>--%>
<%--                                    <div class=" form-group lines my-from-margin-left">--%>
<%--                                        <label for="exampleInputName2 ">实付金额:&nbsp;&nbsp;</label>--%>
<%--                                        <input type="email " class="form-control " id="exampleInputName2 " readonly>--%>

<%--                                    </div>--%>
<%--                                    <div class="form-group lines my-from-margin-left">--%>
<%--                                        <label for="exampleInputName2 ">费用差额:&nbsp;&nbsp;</label>--%>
<%--                                        <input type="email " class="form-control " id="exampleInputName2 " readonly>--%>
<%--                                    </div>--%>
<%--                                </form>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <!--end挂号发票信息-->--%>
                </div>

            </div>
        </div>
    </section>



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
    $(function () {
        $("#cleanScreen").click(function () {
            window.location.reload();
        })
        $(".select").focusout(
            function () {
                $.ajax({
                    type:"post",
                    url:"TuiHaoServlet",
                    dataType:"json",
                    data:"n_u_id_number="+$(".select").val(),
                    success:function (mas) {
                    $("#n_u_id").val(mas.mas[0].n_u_id);
                    $("#n_u_name").val(mas.mas[0].n_u_name);
                     $("#n_u_sex").val(mas.mas[0].n_u_sex);
                        $("#n_u_age").val(mas.mas[0].n_u_age);
                        $("#jiesuantype").val(mas.mas[0].jiesuantype);
                        $("#n_u_medicine_number").val(mas.mas[0].n_u_medicine_number);
                        $("#yiliaotype").val(mas.mas[0].yiliaotype);
                        $("#n_u_id_number").val(mas.mas[0].n_u_id_number);
                        $("#n_u_adder").val(mas.mas[0].n_u_adder);
                        $("#mssage_id").val(mas.mas[0].mssage_id);
                         $("#mssage_id").val(mas.mas[0].mssage_id);

                    }
                });
            }
        );
        $("#add").click(function (){
            $.ajax({
                    type:"post",
                    url:"TuiHaoPServlet",
                    dataType:"json",
                    data:"n_u_id_number="+$(".select").val(),
                    success: function(mas) {
                        var str;
                        for(var i=0;i<mas.ma.length;i++){
                            str+= "<tr> <th> <input type='checkbox' name='checkbox'  value=" + mas.ma[i].n_u_id + " id='cbx'/> </th>"+
                                "  <th scope='row'>"+mas.ma[i].n_u_id+"</th>"+
                                "<td>"+mas.ma[i].n_u_name+"</td>"+
                                "<td>"+mas.ma[i].n_u_sex+"</td>"+
                                "<td>"+mas.ma[i].n_u_date+"</td>"+
                                "<td>"+mas.ma[i].n_u_id_number+"</td>"+
                                "<td>"+mas.ma[i].mssage_id+"</td> "+
                                "<td>"+mas.ma[i].jiesuantype+"</td>"+
                                "<td>"+mas.ma[i].haobietype+"</td>"+
                                "<td>"+mas.ma[i].ns_numbet_date+"</td>"+
                                "<td>"+mas.ma[i].kanzhendate+"</td>"+
                                "<td>否</td>"+
                                "<td>未康复</td>"+
                                "<td>已结</td>"+
                                "td>"+mas.ma[i].keshitype+"</td></tr>";
                        }
                        $("#ams").append(str);
                    }
                }
            )
        });
        $("#getCbx").click(function() {
            function deleteRow(r)
            {
                var i=r.parentNode.parentNode.rowIndex;
                document.getElementById('myTable').deleteRow(i);
            }
            var checkoutBox = $('#cbx'),data=[];
            // if (checkoutBox) {
            //     for (var i=0; i<checkoutBox.length; i++) {
            //         if (checkoutBox[i].checked) {
            //             data.push(checkoutBox[i].value);// 你要的选中的得到的是这个mas.ma[i].n_u_id
            //             deleteRow(this);
            //         }
            //     }
            // }
            $.each($('input:checkbox:checked'),function () {
                if($(this).prop("checked")==true){
                    data.push($(this).val());
                    deleteRow(this);
                }
            })


            $.ajax({
                    type:"get",
                    url:"THServlet",
                    dataType:"json",
                    data:"n_u_id="+data,
                    success: function(mas) {
                        console.log(mas)
                    }
                }
            )
        })
    })


</script>
</body>

</html>