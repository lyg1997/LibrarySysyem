<%--
  Created by IntelliJ IDEA.
  User: 眯眯眼都是怪物
  Date: 2020/5/15
  Time: 14:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="/index.jsp" flush="true"/>
<section id="main-content">
    <section class="wrapper">
        <div class="row mt">
            <div class="col-md-12">
                <h4><i class="fa fa-angle-right"></i> Form Validations</h4>
                <div class="form-panel">
                    <div class=" form">
                        <form class="cmxform form-horizontal style-form" id="commentForm" method="post" action="/editPwd">
                            <div class="form-group ">
                                <div class="col-lg-3"></div>
                                <label for="password" class="control-label col-lg-1">原密码</label>
                                <div class="col-lg-3">
                                    <input class=" form-control" id="password" name="password" minlength="2" type="text" required >
                                </div>
                            </div>
                            <div class="form-group ">
                                <div class="col-lg-3"></div>
                                <label for="newPwd" class="control-label col-lg-1">新密码</label>
                                <div class="col-lg-3">
                                    <input class=" form-control" id="newPwd" name="newPwd" minlength="2" type="text" required />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-lg-offset-1 col-lg-3"></div>
                                <div class="col-lg-offset-1 col-lg-3">
                                    <button class="btn btn-theme" type="submit">提交</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- /form-panel -->
            </div>
            <!-- /col-lg-12 -->
        </div>
    </section>
</section>
</body>
</html>
