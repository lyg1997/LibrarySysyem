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
<%--    <link href="${pageContext.request.contextPath}/bootstrap-4.4.1-dist/css/bootstrap.min.css" rel="stylesheet">--%>
    <script src="${pageContext.request.contextPath}/bootstrap-4.4.1-dist/js/jquery-3.5.0.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap-4.4.1-dist/js/bootstrap.js"></script>
    <link rel="stylesheet" href="/common/lib/advanced-datatable/css/DT_bootstrap.css" />

<body>
<jsp:include page="/admin_index.jsp" flush="true"/>
<section id="main-content">
    <section class="wrapper">
        <div class="row mt">
            <div class="col-md-12">
                <div class="content-panel">
                    <div style="display:flex; width: 100%;">
                    <h4 ><i class="fa fa-angle-right"></i> 图书信息</h4>
                    <button style="margin-left: auto " type="button" class="btn btn-round btn-success"  data-toggle="modal" data-target="#addModal">添加</button>
                    </div>
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
                            <tr>
                                <td>${book.bookName }</td>
                                <td>${book.author}</td>
                                <td>${book.publish}</td>
                                <td>${book.ISBN}</td>
                                <td>${book.language}</td>
                                <td>${book.pub_date}</td>
                                <td>${book.price}</td>
                                <td>${book.number}</td>
                                <td>${book.type}</td>
                                <td>
                                    <a href="/bookDetail?book_id=<c:out value="${book.book_id}"></c:out>"><button class="btn btn-primary btn-xs " ><i class="fa fa-pencil"></i></button></a>
                                    <a href="/bookDel?book_id=<c:out value="${book.book_id}"></c:out>"><button class="btn btn-danger btn-xs " ><i class="fa fa-trash-o"></i></button></a>
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
                        <h5 class="modal-title" id="exampleModalCenterTitle">添加图书信息</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>

                    <div class="modal-body">
                        <form id="bookForm" action="/addBook" method="post">
                            <div class="form-row">
                                <div class="form-group col-lg-6">
                                    <label for="bookName">书名</label>
                                    <input type="number" oninput="if(value>11)value=value.slice(0,11)" class="form-control" id="bookName" name="bookName" required >
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="author">作者</label>
                                    <input type="text" class="form-control" id="author" name="author" required >
                                </div>

                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="publish">出版社</label>
                                    <input type="text" class="form-control" id="publish" name="publish" required >
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="pub_date">出版日期</label>
                                    <input type="date" class="form-control" id="pub_date" name="pub_date" required >
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label for="ISBN">ISBN</label>
                                    <input type="text" class="form-control" id="ISBN" name="ISBN" required >
                                </div>

                                <div class="form-group col-md-4">
                                    <label for="language">语言</label>
                                    <select type="text" id="language" class="form-control" name="language" required >
                                        <option selected>选择语言</option>
                                        <option>英文</option>
                                        <option>中文</option>
                                    </select>
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="type">类别</label>
                                    <select type="text" id="type" class="form-control" name="type" required >
                                        <option selected></option>
                                        <c:forEach var="cate" items="${categories}">
                                            <option>${cate.type}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label for="price">价格</label>
                                    <input type="number" class="form-control" id="price" name="price" required >
                                </div>
                                <div class="form-group col-md-4"></div>
                                <div class="form-group col-md-4">
                                    <label for="number">库存</label>
                                    <input type="number" class="form-control" id="number" name="number" required >
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-12">
                                    <label for="introduction">简介</label>
                                    <textarea type="text" class="form-control" id="introduction" rows="3" name="introduction" required ></textarea>
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
    // function fnFormatDetails(oTable, nTr) {
    //     var aData = oTable.fnGetData(nTr);
    //     var sOut = '<table cellpadding="5" cellspacing="0" border="0" style="padding-left:50px;">';
    //     sOut += '<tr><td>Rendering engine:</td><td>' + aData[1] + ' ' + aData[4] + '</td></tr>';
    //     sOut += '<tr><td>Link to source:</td><td>Could provide a link here</td></tr>';
    //     sOut += '<tr><td>Extra info:</td><td>And any further details here (images etc)</td></tr>';
    //     sOut += '</table>';
    //
    //     return sOut;
    // }
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
        // $('#hidden-table-info tbody td img').live('click', function() {
        //     var nTr = $(this).parents('tr')[0];
        //     if (oTable.fnIsOpen(nTr)) {
        //         /* This row is already open - close it */
        //         this.src = "lib/advanced-datatable/media/images/details_open.png";
        //         oTable.fnClose(nTr);
        //     } else {
        //         /* Open this row */
        //         this.src = "lib/advanced-datatable/images/details_close.png";
        //         oTable.fnOpen(nTr, fnFormatDetails(oTable, nTr), 'details');
        //     }
        // });
    });
</script>
</body>
<script>
</script>
</html>
