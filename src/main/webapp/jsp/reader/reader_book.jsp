<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 眯眯眼都是怪物
  Date: 2020/4/6
  Time: 16:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/common/lib/advanced-datatable/css/DT_bootstrap.css" />

<body>
<jsp:include page="/index.jsp" flush="true"/>
<section id="main-content">
    <section class="wrapper">
        <div class="row mt">
            <div class="col-md-12">
                <div class="content-panel">
                        <h4 ><i class="fa fa-angle-right"></i> 图书信息</h4>
                    <hr>
                    <table class="table table-striped table-advance table-hover" id="hidden-table-info">
                        <thead>
                        <tr>
                            <th><i class="fa fa-bookmark"></i> 图书名称</th>
                            <th><i class="fa fa-pencil"></i> 作者</th>
                            <th><i class="fa fa-bookmark-o"></i> 出版社</th>
                            <th><i class=" fa fa-filter"></i> ISBN</th>
                            <th><i class=" fa fa-edit"></i> 语言</th>
                            <th><i class=" fa fa-calendar"></i> 出版日期</th>
                            <th><i class=" fa fa-jpy"></i> 价格</th>
                            <th><i class=" fa fa-edit"></i> 库存</th>
                            <th><i class=" fa fa-question-circle"></i> 分类</th>
                            <th><i class="fa fa-gear"></i></th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="book" items="${bookList}">
                                <td>${book.bookName }</td>
                                <td>${book.author}</td>
                                <td>${book.publish}</td>
                                <td>${book.ISBN}</td>
                                <td>${book.language}</td>
                                <td>${book.pub_date}</td>
                                <td>${book.price}</td>
                                <td>${book.number}</td>
                                <td>${book.type}</td>
                            <c:set var="flag" value="false"/>
                            <c:forEach var="lend" items="${lendList}">
                                <c:if test="${lend.book_id eq book.book_id}">
                                    <c:set var="flag" value="true"/>
                                </c:if>
                            </c:forEach>
                            <c:if test="${flag}">
                                <td>
                                    <button type="button" class="btn btn-danger btn-xs">已借阅</button>
                              </td>
                            </c:if>
                            <c:if test="${not flag}">
                                    <c:if test="${book.number>0}">
                                        <td><a href="/logbook?book_id=<c:out value="${book.book_id}"></c:out>">
                                            <button type="button" class="btn btn-primary btn-xs">借阅</button>
                                        </a></td>
                                    </c:if>
                                    <c:if test="${book.number==0}">
                                        <td>
                                            <button type="button" class="btn btn-defalut btn-xs" disabled="disabled">已空</button>
                                        </td>
                                    </c:if>
                        </c:if>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
                <!-- /content-panel -->
            </div>
            <!-- /col-md-12 -->
        </div>
        <div style="position: relative;top: 10%">
            <c:if test="${!empty succ}">
                <div class="alert alert-success alert-dismissable">
                    <button type="button" class="close" data-dismiss="alert"
                            aria-hidden="true">
                    </button>
                        ${succ}
                </div>
            </c:if>
            <c:if test="${!empty error}">
                <div class="alert alert-danger alert-dismissable">
                    <button type="button" class="close" data-dismiss="alert"
                            aria-hidden="true">
                    </button>
                        ${error}
                </div>
            </c:if>
        </div>
    </section>
</section>
<script type="text/javascript">
    $(document).ready(function() {
        var oTable = $('#hidden-table-info').dataTable({
            "aoColumnDefs": [{
                "bSortable": false,
                "aTargets": [0]
            }],
            "aaSorting": [
                [1, 'asc']
            ]
        });
    });
</script>
</body>
<script>
</script>
</html>
