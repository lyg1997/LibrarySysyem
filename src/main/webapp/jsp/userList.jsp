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
    <link href="${pageContext.request.contextPath}/bootstrap-4.4.1-dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/bootstrap-4.4.1-dist/js/jquery-3.5.0.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap-4.4.1-dist/js/bootstrap.js"></script>
<body>
<jsp:include page="/index.jsp" flush="true"/>
<section id="main-content">
    <section class="wrapper">
        <div class="row mt">
            <div class="col-md-12">
                <div class="content-panel">
                    <button type="button" class="btn btn-round btn-primary"  data-toggle="modal" data-target="#addModal">添加</button>
                    <table class="table table-striped table-advance table-hover">
                        <h4><i class="fa fa-angle-right"></i> Advanced Table</h4>
                        <hr>
                        <thead>
                        <tr>
                            <th><i class="fa fa-bullhorn"></i> 图书名称</th>
                            <th class="hidden-phone"><i class="fa fa-question-circle"></i> 作者</th>
                            <th><i class="fa fa-bookmark"></i> 出版社</th>
                            <th><i class=" fa fa-edit"></i> ISBN</th>
                            <th><i class=" fa fa-edit"></i> 语言</th>
                            <th><i class=" fa fa-edit"></i> 出版日期</th>
                            <th><i class=" fa fa-edit"></i> 价格</th>
                            <th><i class=" fa fa-edit"></i> 库存</th>
                            <th></th>
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
                            <td>
                                <button class="btn btn-primary btn-xs " ><i class="fa fa-pencil"></i></button>
                                <button class="btn btn-primary btn-xs " ><i class="fa fa-pencil"></i></button>

                                    <c:set var="flag" value="false"/>
                                <c:forEach var="lend" items="${lendList}">
                                <c:if test="${lend eq book.book_id}">
                                    <c:set var="flag" value="true"/>
                                </c:if>
                                </c:forEach>
                                <c:if test="${flag}">
                            <td><a href="returnbook.html?book_id=<c:out value="${book.book_id}"></c:out>">
                                <button type="button" class="btn btn-danger btn-xs">归还</button>
                            </a>
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
                                <div class="form-group col-6">
                                    <label for="bookName">书名</label>
                                    <input type="text" class="form-control" id="bookName" name="bookName" >
                                </div>
                                <div class="form-group col-6">
                                    <label for="author">作者</label>
                                    <input type="text" class="form-control" id="author" name="author" >
                                </div>

                            </div>
                            <div class="form-row">
                                <div class="form-group col-6">
                                    <label for="publish">出版社</label>
                                    <input type="text" class="form-control" id="publish" name="publish" >
                                </div>
                                <div class="form-group col-6">
                                    <label for="pub_date">出版日期</label>
                                    <input type="date" class="form-control" id="pub_date" name="pub_date">
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-4">
                                    <label for="ISBN">ISBN</label>
                                    <input type="text" class="form-control" id="ISBN" name="ISBN">
                                </div>

                                <div class="form-group col-4">
                                    <label for="language">语言</label>
                                    <select type="text" id="language" class="form-control" name="language">
                                        <option selected>选择语言</option>
                                        <option>英文</option>
                                        <option>中文</option>
                                    </select>
                                </div>
                                <div class="form-group col-4">
                                    <label for="type">类别</label>
                                    <select type="text" id="type" class="form-control" name="type">
                                        <option selected>选择类别</option>
                                        <option>文学</option>
                                        <option>小说</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-4">
                                    <label for="price">价格</label>
                                    <input type="text" class="form-control" id="price" name="price" >
                                </div>
                                <div class="form-group col-4"></div>
                                <div class="form-group col-4">
                                    <label for="number">库存</label>
                                    <input type="text" class="form-control" id="number" name="number">
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-12">
                                    <label for="introduction">简介</label>
                                    <textarea type="text" class="form-control" id="introduction" rows="3" name="introduction"></textarea>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary">提交</button>
                            <button type="reset" class="btn btn-secondary">重置</button>
                        </form>
                    </div>

                    <%--            <div class="modal-footer">--%>
                    <%--                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>--%>
                    <%--                <button type="button" class="btn btn-primary">Save changes</button>--%>
                    <%--            </div>--%>

                </div>
            </div>
        </div>
<%--            <div class="d-flex">--%>
<%--                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addModal">添加</button>--%>
<%--                <form class="form-inline my-2 my-lg-0" method="post" action="/user/userSearch">--%>
<%--                    <input class="form-control mr-sm-2" type="text" placeholder="输入图书名" aria-label="Search" id="search" name ="userName" value="${user.userName}">--%>
<%--                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">搜索</button>--%>
<%--                </form>--%>
<%--            </div>--%>
<%--    <div>--%>
<%--            <table class="table" id="tableList">--%>
<%--                <thead class="thead-dark">--%>
<%--                <tr>--%>
<%--                    <th scope="col">用户ID</th>--%>
<%--                    <th scope="col">用户名</th>--%>
<%--                    <th scope="col">真实姓名</th>--%>
<%--                    <th scope="col">测试</th>--%>
<%--                    <th scope="col">操作</th>--%>
<%--                </tr>--%>
<%--                </thead>--%>
<%--                <tbody>--%>
<%--                <c:forEach var="user" items="${userList}">--%>
<%--                    <tr>--%>
<%--                        <td>${user.id }as</td>--%>
<%--                        <td>${user.userName }ss</td>--%>
<%--                        <td>${user.userId}ss</td>--%>
<%--                        <td>电风扇犯得上发顺丰</td>--%>
<%--                        <td>--%>
<%--&lt;%&ndash;                            <button class="btn btn-primary Edit" data-target="#editModal" type="submit" id="edit_table_btn"&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    onclick="openEditModal(this)">编辑&ndash;%&gt;--%>
<%--&lt;%&ndash;                            </button>&ndash;%&gt;--%>

<%--&lt;%&ndash;                            <a href="${pageContext.request.contextPath}/user/userDel?id="${user.id}"">删除</a></td>&ndash;%&gt;--%>
<%--&lt;%&ndash;                       <a href="/detail?id=<c:out value="${user.id}"></c:out>"><button type="submit" class="btn  btn-xs"data-toggle="modal" data-target="#editModal">编辑</button></a>&ndash;%&gt;--%>
<%--    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#editModal">添加</button>--%>
<%--    <a href="/userDel?id=<c:out value="${user.id}"></c:out>"><button type="submit" class="btn btn-danger btn-xs">删除</button></a></td>--%>
<%--                    </tr>--%>
<%--                </c:forEach>--%>
<%--                <tr>--%>
<%--                    <td>${user.id }asasd</td>--%>
<%--                    <td>${user.userName }sadas</td>--%>
<%--                    <td>${user.userId}asda</td>--%>
<%--                    <td>电风扇犯得上发顺丰</td>--%>
<%--                    <td>--%>
<%--                        &lt;%&ndash;                            <button class="btn btn-primary Edit" data-target="#editModal" type="submit" id="edit_table_btn"&ndash;%&gt;--%>
<%--                        &lt;%&ndash;                                    onclick="openEditModal(this)">编辑&ndash;%&gt;--%>
<%--                        &lt;%&ndash;                            </button>&ndash;%&gt;--%>

<%--                        &lt;%&ndash;                            <a href="${pageContext.request.contextPath}/user/userDel?id="${user.id}"">删除</a></td>&ndash;%&gt;--%>
<%--                        &lt;%&ndash;                       <a href="/detail?id=<c:out value="${user.id}"></c:out>"><button type="submit" class="btn  btn-xs"data-toggle="modal" data-target="#editModal">编辑</button></a>&ndash;%&gt;--%>
<%--                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#editModal">添加</button>--%>
<%--                        <a href="/userDel?id=<c:out value="${user.id}"></c:out>"><button type="submit" class="btn btn-danger btn-xs">删除</button></a></td>--%>
<%--                </tr>--%>
<%--                </tbody>--%>
<%--            </table>--%>
<%--    </div>--%>
<%--</div>--%>

<%--&lt;%&ndash;添加的模态框&ndash;%&gt;--%>
<%--<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="addModalLabel" aria-hidden="true">--%>
<%--    <div class="modal-dialog">--%>
<%--        <div class="modal-content">--%>
<%--            <div class="modal-header">--%>
<%--                <h4 class="modal-title" id="addModalLabel">--%>
<%--                    添加--%>
<%--                </h4>--%>
<%--            </div>--%>
<%--            <form role="form" action="/userAdd" method="post">--%>
<%--                <div style="padding: 25px 35px 25px;">--%>
<%--                    <div class="input-group ">--%>
<%--                        <span class="input-group-addon">账号</span>--%>
<%--                        <input type="text" class="form-control " style="width: 100px" name="userId" id="userId"--%>
<%--                               value="${userId}">--%>
<%--                        <span class="input-group-addon">姓名</span>--%>
<%--                        <input type="text" class="form-control " style="width: 100px" name="userName" id="userName"--%>
<%--                               value="${userName}">--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="modal-footer">--%>
<%--                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭--%>
<%--                    </button>--%>
<%--                    <button type="submit" class="btn btn-primary">--%>
<%--                        确定--%>
<%--                    </button>--%>
<%--                </div>--%>
<%--            </form>--%>
<%--        </div><!-- /.modal-content -->--%>

<%--    </div><!-- /.modal -->--%>
<%--</div>--%>
<%--&lt;%&ndash;编辑的模态框&ndash;%&gt;--%>
<%--<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="editModalLabel" aria-hidden="true">--%>
<%--    <div class="modal-dialog">--%>
<%--        <div class="modal-content">--%>
<%--            <div class="modal-header">--%>
<%--                <h4 class="modal-title" id="editModalLabel">--%>
<%--                    编辑--%>
<%--                </h4>--%>
<%--            </div>--%>
<%--            <div class="modal-body">--%>
<%--            <form role="form" action="/userEdit" method="post">--%>
<%--                <div style="padding: 25px 35px 25px;">--%>
<%--                    <div class="input-group ">--%>
<%--                        <span class="input-group-addon">账号</span>--%>
<%--                        <input type="text" class="form-control " style="width: 100px" id="editUserId " name="editUserId" value="${detail.userId}"--%>
<%--                               />--%>
<%--                        <span class="input-group-addon">姓名</span>--%>
<%--                        <input type="text" class="form-control " style="width: 100px" id="editUserName"--%>
<%--                               name="editUserName"--%>
<%--                               />--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="modal-footer">--%>
<%--                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭--%>
<%--                    </button>--%>
<%--                    <button type="submit" class="btn btn-primary" onclick="openEditModal()">--%>
<%--                        确定--%>
<%--                    </button>--%>
<%--                </div>--%>
<%--            </form>--%>
<%--            </div>--%>
<%--        </div><!-- /.modal-content -->--%>
<%--    </div><!-- /.modal -->--%>
<%--</div>--%>

<%--</div>--%>
    </section>
</section>
</body>
<script>
    // $("#searchform").submit(function () {
    //     var val = $("#search").val();
    //     if (val == '') {
    //         alert("请输入关键字");
    //         return false;
    //     }
    // })
    // $("#openEditModal").submit(function () {
    //
    // })
    // function openEditModal(event){
        // var userId = document.getElementById('showList').rows[id].cells[2].innerHTML
        // var userId = document.getElementById("data-table").rows[id].cells[0].innerText;
        // $("#openEditModal").modal('show');
        // var $td = $(obj).parents('tr').children('td');
        // var userId = $td.eq(1).text();
        // var userName = $(this).parents("tr").find("td").eq(2).text();
        // $("#editUserId").val(userId);
        // $("#editUserName").val(userName);
    //     var userId = $(event).parents().children("td").eq(1).html();//
    //     $("#editUserId").val(userId);
    // }
    // $(".Edit").click(function openEditModal() {
    //
    // })
    // $('#openEditModal').on('show.bs.modal', function (event) {
    //     var button = $(event.relatedTarget)
    //     var recipient = button.data('whatever')
    //     var modal = $(this)
    //     // modal.find('#editUserId').val(recipient)
    //     modal.find('.modal-body input').val(recipient)
    // })
    // var $table = $("#tableList");
    // var index= '';
    // $table.bootstrapTable({
    //     //url:"https://examples.wenzhixin.net.cn/examples/bootstrap_table/data",
    //     url: 'get_json/',
    //     sortable: true,
    //     search: true,
    //     // pagination: 'true',  //开启分页
    //     toolbar: "#toolbox",
    //     singleSelect: true,
    //     showColumns: true,
    //     clickToSelect: true,
    //     showRefresh: true,
    //     //下面onClickRow为点击该行的时候获取到该行的行号; 在外边设置index,当点击某一行的时候，再改写该值。
    //     onClickRow:function(row,$e){
    //         index = $e.data('index');
    //     },
    //     //sidePagination:'server', //分页处理  ？？
    //     idField:'id',
    //     columns: [{checkbox: true}, {
    //         field: 'id',
    //         title: 'ID',
    //         sortable: true,
    //     }, /*{
    //         //这一段为为一行增加序号，但是在getSelections里面获取不到值，尽管有设置field:'index'。
    //         field:'index',
    //         title:'序号',
    //         formatter:function (value, row, index) {
    //                     var options = $table.bootstrapTable('getOptions');
    //                     return options.pageSize * (options.pageNumber - 1) + index + 1;}
    //     },*/{
    //         field: 'userId',
    //         title: '账号',
    //         sortable: true,
    //     }]
    // });
    // var $editbtn = $("#edit_table_btn");
    // $(function () {
    //     $editbtn.click(function () {
    //         var info = $table.bootstrapTable('getSelections')[0];
    //         if(info.length==2){
    //             alert("请选择数据");
    //         }else{
    //             $("#editUserId").val(info.userId)
    //             $("#editModal").modal();
    //         }
    //     })
    // });
    function openEditModal(){
        // alert('111111111111111111w')
        $("#editModal").modal('show')
        alert('wqeqweqweqw')
        $("#editUserId").val('')
    }
    // $('#editModal').on('show.bs.modal', function openEditModal(){
    //     $("#editUserId").val('ssssss')
    // })
</script>
</html>
