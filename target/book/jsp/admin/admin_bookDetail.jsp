<%--
  Created by IntelliJ IDEA.
  User: 眯眯眼都是怪物
  Date: 2020/5/12
  Time: 22:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                        <form class="cmxform form-horizontal style-form" id="commentForm" method="post" action="/bookUpdate">
                            <input id="book_id" type="hidden" name="book_id" value="${detail.book_id}">
                            <div class="form-group ">
                                <label for="bookName" class="control-label col-lg-1">书籍名称</label>
                                <div class="col-lg-3">
                                    <input class=" form-control" id="bookName" name="bookName" minlength="2" type="text" required value="${detail.bookName}"/>
                                </div>
                                <div class="col-lg-1"></div>
                                <label for="author" class="control-label col-lg-1">作者</label>
                                <div class="col-lg-3">
                                    <input class=" form-control" id="author" name="author" minlength="2" type="text" required value="${detail.author}"/>
                                </div>
                            </div>
                            <div class="form-group ">
                                <label for="publish" class="control-label col-lg-1">出版社</label>
                                <div class="col-lg-3">
                                    <input class="form-control " id="publish" type="text" name="publish" required value="${detail.publish}"/>
                                </div>
                                <div class="col-lg-1"></div>
                                <label for="pub_date" class="control-label col-lg-1">出版日期</label>
                                <div class="col-lg-3">
                                    <input class="form-control " id="pub_date" type="text" name="pub_date" required value="${detail.pub_date}"/>
                                </div>
                            </div>
                            <div class="form-group ">
                                <label for="ISBN" class="control-label col-lg-1">ISBN</label>
                                <div class="col-lg-3">
                                    <input class="form-control " id="ISBN" type="text" name="ISBN" value="${detail.ISBN}"/>
                                </div>
                                <div class="col-lg-1"></div>
                                <label for="language" class="control-label col-lg-1">语言</label>
                                <div class="col-lg-3">
                                    <input class="form-control " id="language" type="language" name="language" value="${detail.language}"/>
                                </div>
                            </div>
                            <div class="form-group ">
                                <label for="price" class="control-label col-lg-1">价格</label>
                                <div class="col-lg-3">
                                    <input class="form-control " type="number"  id="price" name="price" required value="${detail.price}"/>
                                </div>
                                <div class="col-lg-1"></div>
                                <label for="number" class="control-label col-lg-1">库存</label>
                                <div class="col-lg-3">
                                    <input class="form-control " type="number"  id="number" name="number" required value="${detail.number}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="introduction" class="control-label col-lg-1">简介</label>
                                <div class="col-lg-3">
                                    <textarea type="text" class="form-control" id="introduction" rows="3" name="introduction">${detail.introduction}</textarea>
                                </div>
                                <div class="col-lg-1"></div>
                                <label for="introduction" class="control-label col-lg-1">类别</label>
                                <div class="col-lg-3">
                                    <select type="text" id="type" class="form-control" name="type">
                                        <option selected>${detail.type}</option>
                                        <c:forEach var="cate" items="${categories}">
                                            <option>${cate.type}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-lg-offset-1 col-lg-3">
                                    <button class="btn btn-theme" type="submit">Save</button>
                                </div>
                                <div class="col-lg-3"></div>
                                <div class="col-lg-offset-1 col-lg-3">
                                    <a href="/findBookList_admin"><button class="btn btn-theme04" type="button">Cancel</button></a>
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
