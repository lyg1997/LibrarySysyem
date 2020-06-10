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
                            <h4 ><i class="fa fa-angle-right"></i> 图书分类</h4>
                            <button style="margin-left: auto " type="button" class="btn btn-round btn-success"  data-toggle="modal" data-target="#addModal">添加</button>
                        </div>
                        <hr>
                        <thead>
                        <tr>
                            <th class="hidden"></th>
                            <th><i class="fa fa-bookmark"></i>ID</th>
                            <th><i class="fa fa-question-circle"></i>类名</th>
                            <th><i class="fa fa-gear"></i></th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="cate" items="${categories}">
                            <tr>
                                <td hidden></td>
                                <td>${cate.type_id}</td>
                                <td>${cate.type}</td>
                                <td>
                                    <a href="/categoryDel?type_id=<c:out value="${cate.type_id}"></c:out>"><button class="btn btn-danger btn-xs " ><i class="fa fa-trash-o"></i></button></a>
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

        <div class="modal fade" id="addModal" tabindex="-1" data-backdrop="static" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalCenterTitle">添加分类</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>

                    <div class="modal-body">
                        <form id="bookForm" action="/addReader" method="post">
                            <div class="form-row">
                                <div class="form-group col-md-12">
                                    <label for="type">类别</label>
                                    <input type="text" class="form-control" id="type" name="type" required >
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary">提交</button>
                            <button type="reset" class="btn btn-secondary">重置</button>
                        </form>
                    </div>
                </div>
            </div>
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
