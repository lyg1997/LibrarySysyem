<%--
  Created by IntelliJ IDEA.
  User: 眯眯眼都是怪物
  Date: 2020/4/21
  Time: 17:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html style="background-color: yellow">
<head>
    <title>Title</title>
<%--    <link href="${pageContext.request.contextPath}/bootstrap-4.4.1-dist/css/bootstrap.min.css" rel="stylesheet">--%>
<%--    <script src="${pageContext.request.contextPath}/bootstrap-4.4.1-dist/js/jquery-3.5.0.js"></script>--%>
<%--    <script src="${pageContext.request.contextPath}/bootstrap-4.4.1-dist/js/bootstrap.js"></script>--%>
</head>
<body style="background-color: #0a5098">
<jsp:include page="admin_header.jsp" flush="true"/>
</br>
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="${pageContext.request.contextPath}/images/1.jpg" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
            <img src="" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
            <img src="" class="d-block w-100" alt="...">
        </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
</body>
<style>
    #carouselExampleIndicators{
        width: 1000px;
        height: 650px;
        background-color: #01AAED;
        margin: 0px auto
    }
</style>
</html>
