<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>登录页面</title>
    <link href="https://cdn.bootcss.com/twitter-bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/jquery/3.5.0/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/twitter-bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<form id="userform" action="/userLogin" method="post">
    <div class="body-box">
        <div class="login-box">
            <div class="login-logo"></div>
            <h1>图书管理系统</h1>
            <ul>
                <li><span>用户名</span></li><li><input id ="id" name = "id" type="text" ></li>
            </ul>
            <ul>
                <li><span>密码</span></li><li><input id="password" name = "password" type="password"></li>
            </ul>
<%--            <select style="margin-left: 200px">--%>
<%--                <option id="admin" name="1">管理员</option>--%>
<%--                <option id="reader" name="0">读者</option>--%>
<%--            </select>--%>
            <button type="submit"  onclick= "">登录</button>
            <div id ="msg" style="color:red;width:190px;margin:5px auto;" >
                用户名或密码错误！
            </div>
        </div>
    </div>
</form>
</body>
<script>
    $(function(){
        if("${msg}"==""){
            $("#msg").hide();
        }else{
            $("#msg").show();
        }
    });
    function loginAct(){
        $("#userform").submit();
    }

</script>
<style>
    * {
        padding: 0;
        margin: 0;
    }
    ul {
        list-style: none;
    }
    .body-box {
        width: 100%;
        height: 100%;
        position: fixed;
        /*background-image: url("images/login/01.jpg");*/
        background-color: #182d67;
        background-repeat: no-repeat;
        background-size: cover;
    }

    .login-box {
        width: 450px;
        height: 290px;
        background-color: #fff;
        margin: 200px auto;
        position: relative;
        font-family: '微软雅黑'
    }

    .login-logo {
        width: 96px;
        height: 33px;
        /*background-image: url("images/login/01.png");*/
        position: absolute;
        top: -40px;
        left: 5px;
    }

    .login-box h1 {
        font-size: 24px;
        text-align: center;
        color: #333;
        height: 80px;
        line-height: 80px;
    }

    .login-box ul {
        width: 300px;
        margin: 0 auto 35px;
        height: 30px;
    }

    .login-box li {
        float: left;
    }

    .login-box span {
        width: 55px;
        line-height: 34px;
        display: block;
        color: #333;
    }

    .login-box input {
        width: 230px;
        height: 30px;
        background-color: #fff;
        border: 1px solid #ccc;
    }

    .login-box button {
        width: 190px;
        height: 30px;
        margin: 0 auto;
        background-color: #0a5098;
        border: none;
        display: block;
        color: #fff;
        font-size: 14px;
    }
</style>
</html>
