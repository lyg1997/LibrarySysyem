<%--
  Created by IntelliJ IDEA.
  User: 眯眯眼都是怪物
  Date: 2020/5/8
  Time: 11:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <title>欢迎进入图书管理系统</title>

    <!-- Favicons -->
    <link href="common/img/favicon.png" rel="icon">
    <link href="common/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Bootstrap core CSS -->
    <link href="common/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!--external css-->
    <link href="common/lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="common/css/zabuto_calendar.css">
    <link rel="stylesheet" type="text/css" href="common/lib/gritter/css/jquery.gritter.css" />
    <!-- Custom styles for this template -->
    <link href="common/css/style.css" rel="stylesheet">
    <link href="common/css/style-responsive.css" rel="stylesheet">
    <script src="common/lib/chart-master/Chart.js"></script>
</head>

<body>
<section id="container">
    <header class="header black-bg">
        <div class="sidebar-toggle-box">
            <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
        </div>
        <!--logo start-->
        <a href="/home_reader" class="logo"><b><span>图书管理系统</span></b></a>
        <!--logo end-->
        <div class="top-menu">
            <ul class="nav pull-right top-menu">
                <li><a class="logout" href="/logout">Logout</a></li>
            </ul>
        </div>
    </header>
    <aside>
        <div id="sidebar" class="nav-collapse ">
            <!-- sidebar menu start-->
            <ul class="sidebar-menu" id="nav-accordion">
                <p class="centered"><a href="#"><img src="common/img/ui-sam.jpg" class="img-circle" width="80"></a></p>
                <h5 class="centered">${sessionScope.userName}</h5>
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-book"></i>
                        <span>图书管理</span>
                    </a>
                    <ul class="sub">
                        <li><a href="/findBookList_reader">图书列表</a></li>
                    </ul>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-th"></i>
                        <span>借阅管理</span>
                    </a>
                    <ul class="sub">
                        <li><a href="/myLendList">借阅记录</a></li>
                    </ul>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-edit"></i>
                        <span>密码管理</span>
                    </a>
                    <ul class="sub">
                        <li><a href="/toEditPwd">修改密码</a></li>
                    </ul>
                </li>
            </ul>
            <!-- sidebar menu end-->
        </div>
    </aside>
</section>
<script src="common/lib/jquery/jquery.min.js"></script>
<script src="common/lib/bootstrap/js/bootstrap.min.js"></script>
<script src="common/lib/jquery-ui-1.9.2.custom.min.js"></script>
<script src="common/lib/jquery.ui.touch-punch.min.js"></script>
<script class="include" type="text/javascript" src="common/lib/jquery.dcjqaccordion.2.7.js"></script>
<script src="common/lib/jquery.scrollTo.min.js"></script>
<script src="common/lib/jquery.nicescroll.js" type="text/javascript"></script>
<!--common script for all pages-->
<script src="common/lib/common-scripts.js"></script>


<script type="text/javascript" language="javascript" src="common/lib/advanced-datatable/js/jquery.dataTables.js"></script>
<script type="text/javascript" src="common/lib/advanced-datatable/js/DT_bootstrap.js"></script>
</body>

</html>
