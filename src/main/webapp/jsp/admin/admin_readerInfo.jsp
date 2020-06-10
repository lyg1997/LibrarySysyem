<%--
  Created by IntelliJ IDEA.
  User: 眯眯眼都是怪物
  Date: 2020/5/12
  Time: 17:38
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 眯眯眼都是怪物
  Date: 2020/4/6
  Time: 16:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/common/lib/advanced-datatable/css/DT_bootstrap.css" />
<body>
<jsp:include page="/admin_index.jsp" flush="true"/>
<section id="main-content">
    <section class="wrapper">
        <div class="row mt">
            <div class="col-md-12">
                <div class="content-panel">

                    <table class="table table-striped table-advance table-hover"  id="hidden-table-info">
                        <div style="display:flex; width: 100%;">
                            <h4 ><i class="fa fa-angle-right"></i> 读者信息</h4>
                            <button style="margin-left: auto " type="button" class="btn btn-round btn-success"  data-toggle="modal" data-target="#addModal">添加</button>
                        </div>
                        <hr>
                        <thead>
                        <tr>
                            <th><i class="fa fa-bullhorn"></i>借阅号</th>
                            <th><i class="fa fa-envelope"></i> 姓名</th>
                            <th><i class="fa fa-male"></i><i class="fa fa-female"></i> 性别</th>
                            <th><i class=" fa fa-calendar"></i> 出生日期</th>
                            <th><i class=" fa fa-home"></i> 地址</th>
                            <th><i class=" fa fa-phone"></i> 电话</th>
                            <th><i class=" fa fa-gear"></i></th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="reader" items="${readerInfo}">
                            <tr>
                                <td>${reader.reader_id}</td>
                                <td>${reader.name}</td>
                                <td>${reader.sex}</td>
                                <td>${reader.birthday}</td>
                                <td>${reader.address}</td>
                                <td>${reader.telephone}</td>
                                <td>
                                    <a href="/readerDetail?id=<c:out value="${reader.id}"></c:out>"><button class="btn btn-primary btn-xs " ><i class="fa fa-pencil"></i></button></a>
                                    <a href="/readerDel?id=<c:out value="${reader.id}"></c:out>"><button class="btn btn-danger btn-xs " ><i class="fa fa-trash-o"></i></button></a>
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
                        <h5 class="modal-title" id="exampleModalCenterTitle">添加读者信息</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>

                    <div class="modal-body">
                        <form id="bookForm" action="/addReader" method="post">
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="reader_id">借阅号</label>
                                    <input type="number" oninput="if(value>11)value=value.slice(0,11)" class="form-control" id="reader_id" name="reader_id" required >
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="name">姓名</label>
                                    <input type="text" class="form-control" id="name" name="name" required >
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="sex">性别</label>
                                    <select type="text" id="sex" class="form-control" name="sex" required >
<%--                                        <option selected></option>--%>
                                        <option>男</option>
                                        <option>女</option>
                                    </select>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="birthday">出生日期</label>
                                    <input type="date" class="form-control" id="birthday" name="birthday" required >
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="address">地址</label>
                                    <input type="text" class="form-control" id="address" name="address" required >
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="telephone">电话</label>
                                    <input type="number" oninput="if(value>11)value=value.slice(0,11)" class="form-control" id="telephone" name="telephone" required >
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
<script>
</script>
</html>
