<%--
  Created by IntelliJ IDEA.
  User: 眯眯眼都是怪物
  Date: 2020/5/13
  Time: 14:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/common/lib/advanced-datatable/css/DT_bootstrap.css" />
</head>
<body>
<jsp:include page="/admin_index.jsp" flush="true"/>
<section id="main-content">
    <section class="wrapper">
        <div class="row mt">
            <div class="col-md-12">
                <div class="content-panel">
                    <table class="table table-striped table-advance table-hover"  id="hidden-table-info">
                        <div style="display:flex; width: 100%;">
                            <h4 ><i class="fa fa-angle-right"></i> 借阅记录</h4>
                        </div>
                        <hr>
                        <thead>
                        <tr>
                            <th><i class="fa fa-bookmark"></i>图书编号</th>
                            <th><i class="fa fa-bookmark-o"></i> 借阅号</th>
                            <th><i class="fa fa-book"></i> 书籍名称</th>
                            <th><i class="fa fa-calendar"></i> 借阅时间</th>
                            <th><i class="fa fa-calendar"></i> 归还时间</th>
                            <th><i class=" fa fa-question-circle"></i> 状态</th>
                            <th><i class="fa fa-gear"></i></th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="lend" items="${lendList}">
                            <tr>
                                <td>${lend.book_id }</td>
                                <td>${lend.reader_id}</td>
                                <td>${lend.bookName}</td>
                                <td>${lend.lend_date}</td>
                                <td>${lend.back_date}</td>
                                <c:choose>
                                    <c:when test="${lend.state eq 1}">
                                        <td><span class="label label-warning label-mini">未还</span></td>
                                        <td><a href="/backBook?id=<c:out value="${lend.id}"></c:out>"><button class="btn btn-success btn-xs"><i class="fa fa-check"></i>确认归还</button></a></td>
                                    </c:when>
                                    <c:when test="${lend.state eq 0}">
                                        <td><span class="label label-success label-mini">已还</span></td>
                                        <td></td>
                                    </c:when>
                                </c:choose>

                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
                <!-- /content-panel -->
            </div>
            <!-- /col-md-12 -->
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
</html>
