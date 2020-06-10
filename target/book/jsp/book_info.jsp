<%--
  Created by IntelliJ IDEA.
  User: 眯眯眼都是怪物
  Date: 2020/5/3
  Time: 13:57
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html >
<html>
<head>
<body>
<jsp:include page="admin_header.jsp" flush="true"/>
<div class="container" style="margin-top: 70px">
    <div class="d-flex">
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addModal">添加</button>
        <form class="form-inline my-2 my-lg-0" method="post" action="/conditionSearch">
            <input class="form-control mr-sm-2" type="text" placeholder="输入图书名称" aria-label="Search" id="Search" name ="bookName" >
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">搜索</button>
        </form>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
        <table class="table table-hover table-bordered" id="tableList">
            <thead>
            <tr class="bg-secondary text-white">
                <th scope="col">图书名称</th>
                <th scope="col">作者</th>
                <th scope="col">出版社</th>
                <th scope="col">ISBN</th>
                <th scope="col">语言</th>
                <th scope="col">出版日期</th>
                <th scope="col">价格</th>
                <th scope="col">库存</th>
                <th scope="col">操作</th>
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
                        <button type="submit" id="edit" class="btn btn-primary" data-toggle="modal" onclick="editInfo()">编辑</button>
                        <a href="/bookDel?book_id=<c:out value="${book.book_id}"></c:out>"><button type="botton" class="btn btn-danger btn-xs">删除</button></a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    </div>
</div>

<%--添加的模态框--%>
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
<%--编辑的模态框--%>
<div class="modal fade" id="editModal" tabindex="-1" data-backdrop="static" role="dialog" aria-labelledby="editModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editModalCenterTitle">编辑图书信息</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="editname">书名</label>
                            <input type="text" class="form-control" id="editname" name="bookName">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="editauthor">作者</label>
                            <input type="text" class="form-control" id="editauthor" name="author">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="editpublish">出版社</label>
                            <input type="text" class="form-control" id="editpublish">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="editpub_date">出版日期</label>
                            <input type="date" class="form-control" id="editpub_date">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-4">
                            <label for="editprice">价格</label>
                            <input type="text" class="form-control" id="editprice">
                        </div>
                        <div class="form-group col-md-4">
                            <label for="edittype">类别</label>
                            <select id="edittype" class="form-control">
                                <option selected>选择类别</option>
                                <option>...</option>
                            </select>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="editlanguage">语言</label>
                            <select id="editlanguage" class="form-control">
                                <option selected>选择语言</option>
                                <option>英文</option>
                                <option>中文</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-4">
                            <label for="editnumber">库存</label>
                            <input type="text" class="form-control" id="editnumber">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-12">
                            <label for="editintroduction">简介</label>
                            <textarea class="form-control" id="editintroduction" rows="3" ></textarea>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary">提交</button>
                    <button type="reset" class="btn btn-secondary">重置</button>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
<script>
 function editInfo() {
alert(${book.book_id});
 }
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
    // function openEditModal(){
    //     // alert('111111111111111111w')
    //     $("#editModal").modal('show')
    //     alert('wqeqweqweqw')
    //     $("#editUserId").val('')
    // }
    // $('#editModal').on('show.bs.modal', function openEditModal(){
    //     $("#editUserId").val('ssssss')
    // })
</script>
</html>
