<%--
  Created by IntelliJ IDEA.
  User: 眯眯眼都是怪物
  Date: 2020/5/12
  Time: 22:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="/admin_index.jsp" flush="true"/>
<section id="main-content">
    <section class="wrapper">
<div class="row mt">
    <div class="col-md-12">
        <h4><i class="fa fa-angle-right"></i> Form Validations</h4>
        <div class="form-panel">
            <div class=" form">
                <form class="cmxform form-horizontal style-form" id="commentForm" method="post" action="/readerUpdate">
                    <input id="id" type="hidden" name="id" value="${detail.id}">
                    <div class="form-group ">
                        <label for="reader_id" class="control-label col-lg-1">借阅号</label>
                        <div class="col-lg-3">
                            <input class=" form-control" id="reader_id" name="reader_id" minlength="2" type="text" required value="${detail.reader_id}" readonly="readonly"/>
                        </div>
                        <label for="name" class="control-label col-lg-1">姓名</label>
                        <div class="col-lg-3">
                            <input class=" form-control" id="name" name="name" minlength="2" type="text" required value="${detail.name}"/>
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="sex" class="control-label col-lg-1">性别</label>
                        <div class="col-lg-3">
                            <input class="form-control " id="sex" type="text" name="sex" required value="${detail.sex}"/>
                        </div>
                        <label for="birthday" class="control-label col-lg-1">出生日期</label>
                        <div class="col-lg-3">
                            <input class="form-control " id="birthday" type="text" name="birthday" required value="${detail.birthday}"/>
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="telephone" class="control-label col-lg-1">电话</label>
                        <div class="col-lg-3">
                            <input class="form-control" id="telephone" name="telephone" value="${detail.telephone}" type="number" oninput="if(value>11)value=value.slice(0,11)"/>
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="address" class="control-label col-lg-1">地址</label>
                        <div class="col-lg-3">
                            <input class="form-control " type="text"  id="address" name="address" required value="${detail.address}"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-lg-offset-1 col-lg-3">
                            <button class="btn btn-theme" type="submit">Save</button>
                        </div>
                        <div class="col-lg-offset-1 col-lg-3">
                            <a href="/findUserList"><button class="btn btn-theme04" type="button">Cancel</button></a>
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
