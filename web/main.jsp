<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/5
  Time: 15:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
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
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/favicon.ico">
    <!-- CSS Files -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/css/now-ui-kit.css?v=1.1.0" rel="stylesheet" />
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<body>
<div class="page">
    <div class="page-content d-flex align-items-stretch">
        <div class="col-md-12">
            <!-- Page Header-->
            <header class="page-header-image">
                <div class="container-fluid">
                    <h2 class="no-margin-bottom">
                        <% Date date = new Date(); request.setAttribute("date", date); %>
                        <c:if test="${date.toString().substring(11,13) le '12'}">
                            上午好，美好的一天从清晨开始&nbsp;<img src="img/sun.png" width="47" height="47">️
                        </c:if>
                        <c:if test="${(date.toString().substring(11,13) gt '12')&&(date.toString().substring(11,13) le '18')}">
                            下午好，来一杯奶香浓郁的咖啡吧&nbsp;<img src="img/coffee.png" width="38" height="38">️
                        </c:if>
                        <c:if test="${date.toString().substring(11,13) gt '18'}">
                            晚上好，工作一天了，记得早点休息&nbsp;<img src="img/moon.png" width="34" height="32">️
                        </c:if>
                    </h2>
                </div>
            </header>
            <!-- Breadcrumb-->

            <!-- Dashboard Counts Section-->
            <section class="dashboard-counts no-padding-bottom">
                <div class="container-fluid">
                    <div class="row bg-white has-shadow">
                        <!-- Item -->
                        <div class="col-xl-3 col-sm-6">
                            <div class="item d-flex align-items-center">
                                <div class="icon bg-red"><i class="icon-user"></i></div>
                                <div class="title"><span>今日<br>新增患者</span>
                                    <div class="progress">
                                        <div role="progressbar" style="width: 25%; height: 4px;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" class="progress-bar bg-red"></div>
                                    </div>
                                </div>
                                <div class="number">25 位</div>
                            </div>
                        </div>
                        <!-- Item -->
                        <div class="col-xl-3 col-sm-6">
                            <div class="item d-flex align-items-center">
                                <div class="icon bg-orange"><i class="icon-bill"></i></div>
                                <div class="title"><span>订单<br>数量</span>
                                    <div class="progress">
                                        <div role="progressbar" style="width: 70%; height: 4px;" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" class="progress-bar bg-orange"></div>
                                    </div>
                                </div>
                                <div class="number">1249 笔</div>
                            </div>
                        </div>
                        <!-- Item -->
                        <div class="col-xl-3 col-sm-6">
                            <div class="item d-flex align-items-center">
                                <div class="icon bg-green"><i class="icon-flask"></i></div>
                                <div class="title"><span>药品<br>库存量</span>
                                    <div class="progress">
                                        <div role="progressbar" style="width: 40%; height: 4px;" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" class="progress-bar bg-green"></div>
                                    </div>
                                </div>
                                <div class="number">5582 盒</div>
                            </div>
                        </div>
                        <!-- Item -->
                        <div class="col-xl-3 col-sm-6">
                            <div class="item d-flex align-items-center">
                                <div class="icon bg-blue"><i class="icon-check"></i></div>
                                <div class="title"><span>退号<br>数量</span>
                                    <div class="progress">
                                        <div role="progressbar" style="width: 50%; height: 4px;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" class="progress-bar bg-blue"></div>
                                    </div>
                                </div>
                                <div class="number">68 个</div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Dashboard Header Section    -->
            <section class="dashboard-header">
                <div class="container-fluid">
                    <div class="row">
                        <!-- Line Chart            -->
                        <div class="chart col-lg-6 col-12">
                            <div id="main1" class="line-chart bg-white d-flex align-items-center justify-content-center has-shadow" style="width:650px;height:400px;"></div>
                        </div>
                        <div class="chart col-lg-6 col-12">
                            <div id="main2" class="line-chart bg-white d-flex align-items-center justify-content-center has-shadow" style="width:650px;height:400px;"></div>
                        </div>
                    </div>
                </div>
            </section>

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
<!-- 引入 vintage 主题 -->
<script src="build/dist/theme/macarons.js"></script>
<script src="js/front.js"></script>
<script src="build/dist/echarts.js"></script>
<script src="build/dist/chart/line.js"></script>
<script type="text/javascript">
    //后台查询的数据装数组
    var  arr=new Array();


    // 路径配置
    require.config({
        paths: {
            echarts: 'build/dist'
        }
    });

    // 使用
    require(
        [
            'echarts',
            'echarts/chart/bar', // 使用柱状图就加载bar模块，按需加载
            'echarts/chart/line', // 使用柱状图就加载bar模块，按需加载
            'echarts/chart/pie' // 使用柱状图就加载bar模块，按需加载
        ],
        function (ec) {
            // 基于准备好的dom，初始化echarts图表,设置主题macarons
            var myChart = ec.init(document.getElementById('main1'),'macarons');

            var idx = 1;
            var option = {
                timeline : {
                    data : [
                        '2018-09-01', '2018-10-01', '2018-11-01', '2018-12-01', '2019-01-01',
                        { name:'2019-02-01', symbol:'emptyStar6', symbolSize:8 },
                        '2019-03-01', '2019-04-01', '2019-05-01', '2019-06-01', '2019-07-01',
                        { name:'2019-08-01', symbol:'star6', symbolSize:8 }
                    ],
                    label : {
                        formatter : function(s) {
                            return s.slice(0, 7);
                        }
                    }
                },
                options : [
                    {
                        title : {
                            text: '挂号科室分布',
                            subtext: 'Register types distribution'
                        },
                        tooltip : {
                            trigger: 'item',
                            formatter: "{a} <br/>{b} : {c} ({d}%)"
                        },
                        legend: {
                            data:['内科','妇科','儿科','外科','眼科']
                        },
                        toolbox: {
                            show : true,
                            feature : {
                                mark : {show: true},
                                saveAsImage : {show: true}
                            }
                        },
                        series : [
                            {
                                name:'浏览器（数据纯属虚构）',
                                type:'pie',
                                center: ['50%', '45%'],
                                radius: '50%',
                                data:[
                                    {value: idx * 128 + 80,  name:'内科'},
                                    {value: idx * 64  + 160,  name:'妇科'},
                                    {value: idx * 32  + 320,  name:'儿科'},
                                    {value: idx * 16  + 640,  name:'外科'},
                                    {value: idx++ * 8  + 1280, name:'眼科'}
                                ]
                            }
                        ]
                    },
                    {
                        series : [
                            {
                                name:'浏览器（数据纯属虚构）',
                                type:'pie',
                                data:[
                                    {value: idx * 128 + 80,  name:'内科'},
                                    {value: idx * 64  + 160,  name:'妇科'},
                                    {value: idx * 32  + 320,  name:'儿科'},
                                    {value: idx * 16  + 640,  name:'外科'},
                                    {value: idx++ * 8  + 1280, name:'眼科'}
                                ]
                            }
                        ]
                    },
                    {
                        series : [
                            {
                                name:'浏览器（数据纯属虚构）',
                                type:'pie',
                                data:[
                                    {value: idx * 128 + 80,  name:'内科'},
                                    {value: idx * 64  + 160,  name:'妇科'},
                                    {value: idx * 32  + 320,  name:'儿科'},
                                    {value: idx * 16  + 640,  name:'外科'},
                                    {value: idx++ * 8  + 1280, name:'眼科'}
                                ]
                            }
                        ]
                    },
                    {
                        series : [
                            {
                                name:'浏览器（数据纯属虚构）',
                                type:'pie',
                                data:[
                                    {value: idx * 128 + 80,  name:'内科'},
                                    {value: idx * 64  + 160,  name:'妇科'},
                                    {value: idx * 32  + 320,  name:'儿科'},
                                    {value: idx * 16  + 640,  name:'外科'},
                                    {value: idx++ * 8  + 1280, name:'眼科'}
                                ]
                            }
                        ]
                    },
                    {
                        series : [
                            {
                                name:'浏览器（数据纯属虚构）',
                                type:'pie',
                                data:[
                                    {value: idx * 128 + 80,  name:'内科'},
                                    {value: idx * 64  + 160,  name:'妇科'},
                                    {value: idx * 32  + 320,  name:'儿科'},
                                    {value: idx * 16  + 640,  name:'外科'},
                                    {value: idx++ * 8  + 1280, name:'眼科'}
                                ]
                            }
                        ]
                    },
                    {
                        series : [
                            {
                                name:'浏览器（数据纯属虚构）',
                                type:'pie',
                                data:[
                                    {value: idx * 128 + 80,  name:'内科'},
                                    {value: idx * 64  + 160,  name:'妇科'},
                                    {value: idx * 32  + 320,  name:'儿科'},
                                    {value: idx * 16  + 640,  name:'外科'},
                                    {value: idx++ * 8  + 1280, name:'眼科'}
                                ]
                            }
                        ]
                    },
                    {
                        series : [
                            {
                                name:'浏览器（数据纯属虚构）',
                                type:'pie',
                                data:[
                                    {value: idx * 128 + 80,  name:'内科'},
                                    {value: idx * 64  + 160,  name:'妇科'},
                                    {value: idx * 32  + 320,  name:'儿科'},
                                    {value: idx * 16  + 640,  name:'外科'},
                                    {value: idx++ * 8  + 1280, name:'眼科'}
                                ]
                            }
                        ]
                    },
                    {
                        series : [
                            {
                                name:'浏览器（数据纯属虚构）',
                                type:'pie',
                                data:[
                                    {value: idx * 128 + 80,  name:'内科'},
                                    {value: idx * 64  + 160,  name:'妇科'},
                                    {value: idx * 32  + 320,  name:'儿科'},
                                    {value: idx * 16  + 640,  name:'外科'},
                                    {value: idx++ * 8  + 1280, name:'眼科'}
                                ]
                            }
                        ]
                    },
                    {
                        series : [
                            {
                                name:'浏览器（数据纯属虚构）',
                                type:'pie',
                                data:[
                                    {value: idx * 128 + 80,  name:'内科'},
                                    {value: idx * 64  + 160,  name:'妇科'},
                                    {value: idx * 32  + 320,  name:'儿科'},
                                    {value: idx * 16  + 640,  name:'外科'},
                                    {value: idx++ * 8  + 1280, name:'眼科'}
                                ]
                            }
                        ]
                    },
                    {
                        series : [
                            {
                                name:'浏览器（数据纯属虚构）',
                                type:'pie',
                                data:[
                                    {value: idx * 128 + 80,  name:'内科'},
                                    {value: idx * 64  + 160,  name:'妇科'},
                                    {value: idx * 32  + 320,  name:'儿科'},
                                    {value: idx * 16  + 640,  name:'外科'},
                                    {value: idx++ * 8  + 1280, name:'眼科'}
                                ]
                            }
                        ]
                    },
                    {
                        series : [
                            {
                                name:'浏览器（数据纯属虚构）',
                                type:'pie',
                                data:[
                                    {value: idx * 128 + 80,  name:'内科'},
                                    {value: idx * 64  + 160,  name:'妇科'},
                                    {value: idx * 32  + 320,  name:'儿科'},
                                    {value: idx * 16  + 640,  name:'外科'},
                                    {value: idx++ * 8  + 1280, name:'眼科'}
                                ]
                            }
                        ]
                    },
                    {
                        series : [
                            {
                                name:'浏览器（数据纯属虚构）',
                                type:'pie',
                                data:[
                                    {value: idx * 128 + 80,  name:'内科'},
                                    {value: idx * 64  + 160,  name:'妇科'},
                                    {value: idx * 32  + 320,  name:'儿科'},
                                    {value: idx * 16  + 640,  name:'外科'},
                                    {value: idx++ * 8  + 1280, name:'眼科'}
                                ]
                            }
                        ]
                    }
                ]
            };
            myChart.setOption(option);

            var myChart1 = ec.init(document.getElementById('main2'),'macarons');
            var option1 = {
                title : {
                    text: '药品需求量',
                    subtext: 'Drug Demand '
                },
                tooltip : {
                    trigger: 'axis',
                },
                grid  : {
                    x:145,
                },
                legend: {
                    x:145,
                    data:['小苏打','阿莫西林胶囊','青霉素颗粒','感冒灵颗粒','维C银翘片'],
                },
                toolbox: {
                    show : true,
                    feature : {
                        // mark : {show: true},
                        // dataView : {show: true, readOnly: false},
                        // magicType : {show: true, type: ['line','tiled']},
                        // restore : {show: true},
                        saveAsImage : {show: true}
                    }
                },
                calculable : true,
                xAxis : [
                    {
                        type : 'category',
                        boundaryGap : false,
                        data : ['周一','周二','周三','周四','周五','周六','周日']
                    }
                ],
                yAxis : [
                    {
                        type : 'value'
                    }
                ],
                series : [
                    {
                        name:'小苏打',
                        type:'line',
                        stack: '总量',
                        itemStyle: {normal: {areaStyle: {type: 'default'}}},
                        data:[120, 132, 101, 134, 90, 230, 210]
                    },
                    {
                        name:'阿莫西林胶囊',
                        type:'line',
                        stack: '总量',
                        itemStyle: {normal: {areaStyle: {type: 'default'}}},
                        data:[220, 182, 191, 234, 290, 330, 310]
                    },
                    {
                        name:'青霉素颗粒',
                        type:'line',
                        stack: '总量',
                        itemStyle: {normal: {areaStyle: {type: 'default'}}},
                        data:[150, 232, 201, 154, 190, 330, 410]
                    },
                    {
                        name:'感冒灵颗粒',
                        type:'line',
                        stack: '总量',
                        itemStyle: {normal: {areaStyle: {type: 'default'}}},
                        data:[320, 332, 301, 334, 390, 330, 320]
                    },
                    {
                        name:'维C银翘片',
                        type:'line',
                        stack: '总量',
                        itemStyle: {normal: {areaStyle: {type: 'default'}}},
                        data:[820, 932, 901, 934, 1290, 1330, 1320]
                    }
                ]
            };
            myChart1.setOption(option1);
        });
</script>
</body>
</html>