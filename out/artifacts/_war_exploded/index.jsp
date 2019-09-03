<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/5
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>HIS医院门诊管理系统V1.0</title>
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
<%--  <link href="assets/css/bootstrap.min.css" rel="stylesheet" />--%>
  <link href="assets/css/now-ui-kit.css?v=1.1.0" rel="stylesheet" />
  <!-- Tweaks for older IEs--><!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<body>
<div class="page">
  <!-- Main Navbar-->
  <header class="header">
    <nav class="navbar">
      <!-- Search Box-->
<%--      <div class="search-box">--%>
<%--      </div>--%>
      <div class="container-fluid">
        <div class="navbar-holder d-flex align-items-center justify-content-between">
          <!-- Navbar Header-->
          <div class="navbar-header">
            <!-- Navbar Brand --><a class="navbar-brand d-none d-sm-inline-block">
            <div class="brand-text d-none d-lg-inline-block"><span style="font-size: 26px"><img src="img/medical-intellige.png" width="30" height="30">&nbsp;HIS</span></div>
            <div class="brand-text d-none d-sm-inline-block d-lg-none"><strong>HELLO</strong></div></a>
<%--            <!-- Toggle Button--><a id="toggle-btn" href="#" class="menu-btn active"><span></span><span></span><span></span></a>--%>
            <button id="toggle-btn" class="navbar-toggler navbar-toggler menu-btn" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="true" aria-label="Toggle navigation">
              <span class="navbar-toggler-bar bar1"></span>
              <span class="navbar-toggler-bar bar1"></span>
              <span class="navbar-toggler-bar bar3"></span>
            </button>
          </div>
          <!-- Navbar Menu -->
          <ul class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">
            <!-- Languages dropdown    -->
            <li class="nav-item dropdown">
              <a id="languages" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link language dropdown-toggle">
                <img src="img/sehzi.png" alt="个人设置" class="my-input-img"/><span class="d-none d-sm-inline-block">个人设置</span></a>
              <ul aria-labelledby="languages" class="dropdown-menu">
                <!-- Button trigger modal -->
                <li><a rel="nofollow" href="#" class="dropdown-item"><img src="img/userInfo.png" alt="English" class="mr-2 my-input-img" data-toggle="modal" data-target="#myModal">        <button type="button" class="btn btn-primary btn-round" data-toggle="modal" data-target="#myModal">
                  个人信息
                </button></a></li>
                <li><a rel="nofollow" href="#" class="dropdown-item"><img src="img/pwd.png" alt="English" class="mr-2 my-input-img"><button type="button" class="btn btn-round btn-warning" data-toggle="modal" data-target="#myModal1">密码修改</button></a></li>

                <form action="ExitServlet" method="get" >
                  <li class="nav-item"><a class="nav-link logout">
                    <img src="img/logout2.png" alt="English" class="mr-2 my-input-img"/>
                    <button class="btn btn-round ">退出</button></a></li>
                </form>
              </ul>
            </li>
            <!-- Logout    -->

          </ul>
        </div>
      </div>
    </nav>
  </header>
  <!-- 个人信息Modal -->
  <div class="modal fade bs-example-modal-sm" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" id="myModalLabel">个人信息</h4>
        </div>

        <div class="modal-body">
          <form class="form-horizontal">
            <div class="form-group">
              <label for="inputEmail1" class="col-sm-4 control-label">账号</label>
              <div class="col-sm-10">
                <input type="text" readonly class="form-control" value="${users.a_account}" id="inputEmail1" placeholder="账号">
              </div>
            </div>

            <div class="form-group">
              <label for="inputEmail2" class="col-sm-4 control-label">邮箱</label>
              <div class="col-sm-10">
                <input type="text" readonly class="form-control" value="${users.a_email}" id="inputEmail2" placeholder="邮箱">
              </div>
            </div>

            <div class="form-group">
              <label for="inputEmail3" class="col-sm-4 control-label">职位</label>
              <div class="col-sm-10">
                <input type="text" readonly class="form-control" value="${users.j_name}" id="inputEmail3" placeholder="职位">
              </div>
            </div>

            <div class="form-group">
              <label for="inputEmail4" class="col-sm-4 control-label">姓名</label>
              <div class="col-sm-10">
                <input type="text" readonly class="form-control" value="${users.u_name}" id="inputEmail4" placeholder="姓名">
              </div>
            </div>

            <div class="form-group">
              <label for="inputEmail5" class="col-sm-4 control-label">性别</label>
              <div class="col-sm-10">
                <input type="text" readonly class="form-control" value="${users.u_sex}" id="inputEmail5" placeholder="性别">
              </div>
            </div>

            <div class="form-group">
              <label for="inputEmail6" class="col-sm-4 control-label">年龄</label>
              <div class="col-sm-10">
                <input type="text" readonly class="form-control" value="${users. u_age}" id="inputEmail6" placeholder="年龄">
              </div>
            </div>

            <div class="form-group">
              <label for="inputEmail7" class="col-sm-4 control-label">出生日期</label>
              <div class="col-sm-10">
                <input type="text" readonly class="form-control" value="${users.u_date}" id="inputEmail7" placeholder="出生日期">
              </div>
            </div>

            <div class="form-group">
              <label for="inputEmail8" class="col-sm-4 control-label">医疗证件号</label>
              <div class="col-sm-10">
                <input type="text" readonly class="form-control" value="${users.u_medicine_number}" id="inputEmail8" placeholder="治疗证件号">
              </div>
            </div>


            <div style="text-align:center">
              <button type="button" class="btn btn-round btn-default" data-dismiss="modal">Close</button>
            </div>

          </form>

        </div>

      </div>
    </div>
  </div>
  <!-- 修改密码Modal -->
  <div class="modal fade bs-example-modal-sm" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
    <div class="modal-dialog modal-sm" role="document">
      <div class="modal-content">
<%--        <div class="modal-header" style="text-align: center">--%>
<%--          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>--%>
<%--          <h4 class="modal-title" id="myModalLabel1" >修改密码</h4>--%>
<%--        </div>--%>
        <div style="text-align: center">
          <h4 class="modal-title">修改密码</h4>
        </div>
         <div class="modal-body">
            <form class="form-horizontal" Action="UpPwdServlet" method="post">
<%--          <input type="hidden" value="${users.a_id}"name="a_id">--%>
<%--          <div class="form-group">--%>
<%--            <label for="inputEmail11" class="col-sm-4 control-label">账号</label>--%>
              <div class="form-group">
                <label for="inputEmail1" class="col-sm-4 control-label">账号</label>
                <div class="col-sm-10" style="text-align: center">
                 <input type="text" readonly class="form-control" value="${users.a_account}" name="a_account" id="inputEmail11" placeholder="账号">
                </div>
              </div>
              <div class="form-group">
                <label for="inputEmail12" class="col-sm-4 control-label">新密码</label>
                <div class="col-sm-10" style="text-align: center">
                 <input type="password"  class="form-control" name="a_pwd" id="a_pwd" placeholder="请输入新密码">
                </div>
              </div>
              <div class="form-group">
                <label for="inputEmail12" class="col-sm-6 control-label">确认新密码</label>
                <div class="col-sm-10" style="text-align: center">
                <input type="password"  class="form-control" name="a1_pwd" id="a1_pwd" placeholder="请再次输入新密码">
                </div>
              </div>

              <div>
                <a>    </a>
              </div>
              <div style="text-align: center">
                <input type="submit" class="btn btn-round btn-primary" value="确定" />
<%--            <input type="submit" class="btn btn-round" value="取消" />--%>
              </div>
           </form>
         </div>
        </div>
      </div>
    </div>
  <!-- Modal -->
  <div class="page-content d-flex align-items-stretch">
    <!-- Side Navbar -->
    <nav class="side-navbar">
      <!-- Sidebar Header-->
      <div class="sidebar-header d-flex align-items-center">
<%--        <div class="avatar"><img src="img/avatar.png" alt="..." class="img-fluid rounded-circle"></div>--%>
          <c:if test="${users.a_mark eq '0'}">
            <div class="avatar"><img src="img/avatar.png" alt="..." class="img-fluid rounded-circle"></div>
          </c:if>
          <c:if test="${users.a_mark eq '1'}">
            <div class="avatar"><img src="img/administrator.png" alt="..." class="img-fluid rounded-circle"></div>
          </c:if>
        <div class="title">
          <h1 class="h4">${users.a_account}</h1>
          <p>${users.j_name}</p>
        </div>
      </div>
      <!-- Sidebar Navidation Menus--><span class="heading">菜单</span>
      <ul class="list-unstyled">
        <li class="active"><a href="main.jsp" target="mainframe">> <i class="icon-home"></i>首页</a></li>
<%--        <c:forEach items="${listMuen}" var="pmuen">--%>
<%--          <c:if test="${pmuen.m_pr_id==0}">--%>
<%--        <li><a href="#exampledropdownDropdown ${pmuen.m_id}" target="mainframe"  aria-expanded="false" data-toggle="collapse"> ${pmuen.m_style}${pmuen.m_name }</a>--%>
<%--          <ul id="${pmuen.m_id}" class="collapse list-unstyled ">--%>
<%--            <c:forEach items="${listMuen}" var="cmuen">--%>
<%--             <c:if test="${cmuen.m_pr_id==pmuen.m_id}">--%>
<%--            <li><a href="${cmuen.m_url}" target="mainframe">>${cmuen.m_style}${cmuen.m_name }</a></li>--%>
<%--             </c:if>--%>
<%--            </c:forEach>--%>
<%--          </ul>--%>
<%--        </li>--%>
<%--          </c:if>--%>
<%--        </c:forEach>--%>
           <c:forEach items="${listMenu}" var="pmenu">
             <c:if test="${pmenu.m_pr_id==1}">

               <li><a href="${pmenu.m_url}" target="mainframe" >> ${pmenu.m_style}${pmenu.m_name }</a></li>
                     </c:if>
           </c:forEach>
      </ul>

    </nav>
    <div class="content-inner">
      <!-- Page Header-->
      <iframe id="mainframe" name="mainframe" src="main.jsp"
              style="width: 100%;height:100%;border: 0px;"> </iframe>








      <!-- Page Footer-->
      <footer class="main-footer">
        <div class="container-fluid">
          <div class="row">
            <div class="col-sm-6">
              <p>&copy; 2019-2020</p>
            </div>
            <div class="col-sm-6 text-right">
              <p>HIS医疗门诊管理系统V1.0 </p>
              <!-- Please do not remove the backlink to us unless you support further theme's development at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
            </div>
          </div>
        </div>
      </footer>
    </div>
  </div>
</div>
<!-- JavaScript files-->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/popper.js/umd/popper.min.js"> </script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
<script src="vendor/chart.js/Chart.min.js"></script>
<script src="vendor/jquery-validation/jquery.validate.min.js"></script>
<script src="js/charts-home.js"></script>
<!-- Main File-->
<script src="js/front.js"></script>
</body>
<script>
  $(function () {
    /**
     * 确认新密码相同
     */
    $("#a1_pwd").focusout(function () {
      var a = $("#a_pwd").val();
      var a1 = $("#a1_pwd").val();
      // alert(a)
      // alert(a1)
        if (a == a1) {

        }
        else {
          alert("两次输入密码不一致！")
          $("#a_pwd").val("");
          $("#a1_pwd").val("")
        }
    })

  })
</script>
</html>