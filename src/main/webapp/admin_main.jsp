<%--
  Created by IntelliJ IDEA.
  User: 眯眯眼都是怪物
  Date: 2020/4/20
  Time: 14:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
    <link href="common/lib/fancybox/jquery.fancybox.css" rel="stylesheet" />
</head>
<body>
<jsp:include page="/admin_index.jsp" flush="true"/>
<section id="main-content">
    <section class="wrapper site-min-height">
        <h3><i class="fa fa-angle-right"></i> 首页</h3>
        <hr>
        <div class="row mt">
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 desc">
                <div class="project-wrapper">
                    <div class="project">
                        <div class="photo-wrapper">
                            <div class="photo">
                                <a class="fancybox" href="common/img/portfolio/port04.jpg"><img class="img-responsive" src="common/img/portfolio/port04.jpg" alt=""></a>
                            </div>
                            <div class="overlay"></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- col-lg-4 -->
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 desc">
                <div class="project-wrapper">
                    <div class="project">
                        <div class="photo-wrapper">
                            <div class="photo">
                                <a class="fancybox" href="common/img/portfolio/port05.jpg"><img class="img-responsive" src="common/img/portfolio/port05.jpg" alt=""></a>
                            </div>
                            <div class="overlay"></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- col-lg-4 -->
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 desc">
                <div class="project-wrapper">
                    <div class="project">
                        <div class="photo-wrapper">
                            <div class="photo">
                                <a class="fancybox" href="common/img/portfolio/port06.jpg"><img class="img-responsive" src="common/img/portfolio/port06.jpg" alt=""></a>
                            </div>
                            <div class="overlay"></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- col-lg-4 -->
        </div>
        <!-- /row -->
        <div class="row mt">
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 desc">
                <div class="project-wrapper">
                    <div class="project">
                        <div class="photo-wrapper">
                            <div class="photo">
                                <a class="fancybox" href="common/img/portfolio/port01.jpg"><img class="img-responsive" src="common/img/portfolio/port01.jpg" alt=""></a>
                            </div>
                            <div class="overlay"></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- col-lg-4 -->
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 desc">
                <div class="project-wrapper">
                    <div class="project">
                        <div class="photo-wrapper">
                            <div class="photo">
                                <a class="fancybox" href="common/img/portfolio/port02.jpg"><img class="img-responsive" src="common/img/portfolio/port02.jpg" alt=""></a>
                            </div>
                            <div class="overlay"></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- col-lg-4 -->
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 desc">
                <div class="project-wrapper">
                    <div class="project">
                        <div class="photo-wrapper">
                            <div class="photo">
                                <a class="fancybox" href="common/img/portfolio/port03.jpg"><img class="img-responsive" src="common/img/portfolio/port03.jpg" alt=""></a>
                            </div>
                            <div class="overlay"></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- col-lg-4 -->
        </div>
        <!-- /row -->
        <div class="row mt mb">
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 desc">
                <div class="project-wrapper">
                    <div class="project">
                        <div class="photo-wrapper">
                            <div class="photo">
                                <a class="fancybox" href="common/img/portfolio/port04.jpg"><img class="img-responsive" src="common/img/portfolio/port04.jpg" alt=""></a>
                            </div>
                            <div class="overlay"></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- col-lg-4 -->
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 desc">
                <div class="project-wrapper">
                    <div class="project">
                        <div class="photo-wrapper">
                            <div class="photo">
                                <a class="fancybox" href="common/img/portfolio/port05.jpg"><img class="img-responsive" src="common/img/portfolio/port05.jpg" alt=""></a>
                            </div>
                            <div class="overlay"></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- col-lg-4 -->
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 desc">
                <div class="project-wrapper">
                    <div class="project">
                        <div class="photo-wrapper">
                            <div class="photo">
                                <a class="fancybox" href="common/img/portfolio/port06.jpg"><img class="img-responsive" src="common/img/portfolio/port06.jpg" alt=""></a>
                            </div>
                            <div class="overlay"></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- col-lg-4 -->
        </div>
        <!-- /row -->
    </section>
    <!-- /wrapper -->
</section>
<script type="text/javascript">
    $(function() {
        //    fancybox
        jQuery(".fancybox").fancybox();
    });
</script>
<script src="/common/lib/fancybox/jquery.fancybox.js"></script>
<%--<script class="include" type="text/javascript" src="/common/lib/jquery.dcjqaccordion.2.7.js"></script>--%>
<%--<script src="/common/lib/jquery.scrollTo.min.js"></script>--%>
<%--<script src="/common/lib/jquery.nicescroll.js" type="text/javascript"></script>--%>

<%--<section id="main-content">--%>
<%--    <section class="wrapper">--%>
<%--        <h3><i class="fa fa-angle-right"></i> Advanced Table Example</h3>--%>
<%--        <div class="row mb">--%>
<%--            <div class="col-md-12">--%>
<%--                <button type="button" class="btn btn-round btn-primary"  data-toggle="modal" data-target="#addModal">添加</button>--%>
<%--            <!-- page start-->--%>
<%--            <div class="content-panel">--%>

<%--                    <table  class="table table-striped table-advance table-hover" id="hidden-table-info">--%>
<%--                        <thead>--%>
<%--                        <tr>--%>
<%--                            <th><i class="fa fa-bullhorn"></i> 图书名称</th>--%>
<%--                            <th class="hidden-phone"><i class="fa fa-question-circle"></i> 作者</th>--%>
<%--                            <th><i class="fa fa-bookmark"></i> 出版社</th>--%>
<%--                            <th><i class=" fa fa-edit"></i> ISBN</th>--%>
<%--                            <th><i class=" fa fa-edit"></i> 语言</th>--%>
<%--                            <th><i class=" fa fa-edit"></i> 出版日期</th>--%>
<%--                            <th><i class=" fa fa-edit"></i> 价格</th>--%>
<%--                            <th><i class=" fa fa-edit"></i> 库存</th>--%>
<%--                            <th></th>--%>
<%--                        </tr>--%>
<%--                        </thead>--%>
<%--                        <tbody>--%>
<%--                        <c:forEach var="book" items="${bookList}">--%>
<%--                            <tr>--%>
<%--                                <td>${book.bookName }</td>--%>
<%--                                <td>${book.author}</td>--%>
<%--                                <td>${book.publish}</td>--%>
<%--                                <td>${book.ISBN}</td>--%>
<%--                                <td>${book.language}</td>--%>
<%--                                <td>${book.pub_date}</td>--%>
<%--                                <td>${book.price}</td>--%>
<%--                                <td>${book.number}</td>--%>
<%--                                <td>--%>
<%--                                    <a href="/bookDetail?book_id=<c:out value="${book.book_id}"></c:out>"><button class="btn btn-primary btn-xs " ><i class="fa fa-pencil"></i>编辑</button></a>--%>
<%--                                    <a href="/bookDel?book_id=<c:out value="${book.book_id}"></c:out>"><button class="btn btn-primary btn-xs " ><i class="fa fa-pencil"></i>删除</button></a>--%>
<%--                                </td>--%>
<%--                            </tr>--%>
<%--                        </c:forEach>--%>
<%--                        </tbody>--%>
<%--                    </table>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <!-- page end-->--%>
<%--        </div>--%>
<%--        <!-- /row -->--%>
<%--        <div class="modal fade" id="addModal" tabindex="-1" data-backdrop="static" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">--%>
<%--            <div class="modal-dialog modal-dialog-centered" role="document">--%>
<%--                <div class="modal-content">--%>
<%--                    <div class="modal-header">--%>
<%--                        <h5 class="modal-title" id="exampleModalCenterTitle">添加图书信息</h5>--%>
<%--                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">--%>
<%--                            <span aria-hidden="true">&times;</span>--%>
<%--                        </button>--%>
<%--                    </div>--%>

<%--                    <div class="modal-body">--%>
<%--                        <form id="bookForm" action="/addBook" method="post">--%>
<%--                            <div class="form-row">--%>
<%--                                <div class="form-group col-6">--%>
<%--                                    <label for="bookName">书名</label>--%>
<%--                                    <input type="text" class="form-control" id="bookName" name="bookName" >--%>
<%--                                </div>--%>
<%--                                <div class="form-group col-6">--%>
<%--                                    <label for="author">作者</label>--%>
<%--                                    <input type="text" class="form-control" id="author" name="author" >--%>
<%--                                </div>--%>

<%--                            </div>--%>
<%--                            <div class="form-row">--%>
<%--                                <div class="form-group col-6">--%>
<%--                                    <label for="publish">出版社</label>--%>
<%--                                    <input type="text" class="form-control" id="publish" name="publish" >--%>
<%--                                </div>--%>
<%--                                <div class="form-group col-6">--%>
<%--                                    <label for="pub_date">出版日期</label>--%>
<%--                                    <input type="date" class="form-control" id="pub_date" name="pub_date">--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="form-row">--%>
<%--                                <div class="form-group col-4">--%>
<%--                                    <label for="ISBN">ISBN</label>--%>
<%--                                    <input type="text" class="form-control" id="ISBN" name="ISBN">--%>
<%--                                </div>--%>

<%--                                <div class="form-group col-4">--%>
<%--                                    <label for="language">语言</label>--%>
<%--                                    <select type="text" id="language" class="form-control" name="language">--%>
<%--                                        <option selected>选择语言</option>--%>
<%--                                        <option>英文</option>--%>
<%--                                        <option>中文</option>--%>
<%--                                    </select>--%>
<%--                                </div>--%>
<%--                                <div class="form-group col-4">--%>
<%--                                    <label for="type">类别</label>--%>
<%--                                    <select type="text" id="type" class="form-control" name="type">--%>
<%--                                        <option selected>选择类别</option>--%>
<%--                                        <c:forEach var="cate" items="${categories}">--%>
<%--                                            <option>${cate.type}</option>--%>
<%--                                        </c:forEach>--%>
<%--                                    </select>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="form-row">--%>
<%--                                <div class="form-group col-4">--%>
<%--                                    <label for="price">价格</label>--%>
<%--                                    <input type="text" class="form-control" id="price" name="price" >--%>
<%--                                </div>--%>
<%--                                <div class="form-group col-4"></div>--%>
<%--                                <div class="form-group col-4">--%>
<%--                                    <label for="number">库存</label>--%>
<%--                                    <input type="text" class="form-control" id="number" name="number">--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="form-row">--%>
<%--                                <div class="form-group col-12">--%>
<%--                                    <label for="introduction">简介</label>--%>
<%--                                    <textarea type="text" class="form-control" id="introduction" rows="3" name="introduction"></textarea>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <button type="submit" class="btn btn-primary">提交</button>--%>
<%--                            <button type="reset" class="btn btn-secondary">重置</button>--%>
<%--                        </form>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </section>--%>
<%--    <!-- /wrapper -->--%>
<%--</section>--%>
<script type="text/javascript">
    /* Formating function for row details */
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

    // $(document).ready(function() {
    /*
     * Insert a 'details' column to the table
     */
    // var nCloneTh = document.createElement('th');
    // var nCloneTd = document.createElement('td');
    // nCloneTd.innerHTML = '<img src="lib/advanced-datatable/images/details_open.png">';
    // nCloneTd.className = "center";
    //
    // $('#hidden-table-info thead tr').each(function() {
    //     this.insertBefore(nCloneTh, this.childNodes[0]);
    // });
    //
    // $('#hidden-table-info tbody tr').each(function() {
    //     this.insertBefore(nCloneTd.cloneNode(true), this.childNodes[0]);
    // });

    /*
     * Initialse DataTables, with no sorting on the 'details' column
     */
    // var oTable = $('#hidden-table-info').dataTable({
    //     "aoColumnDefs": [{
    //         "bSortable": false,
    //         "aTargets": [0]
    //     }],
    //     "aaSorting": [
    //         [1, 'asc']
    //     ]
    // });

    /* Add event listener for opening and closing details
     * Note that the indicator for showing which row is open is not controlled by DataTables,
     * rather it is done here
     */
    //     $('#hidden-table-info tbody td img').live('click', function() {
    //         var nTr = $(this).parents('tr')[0];
    //         if (oTable.fnIsOpen(nTr)) {
    //             /* This row is already open - close it */
    //             this.src = "lib/advanced-datatable/media/images/details_open.png";
    //             oTable.fnClose(nTr);
    //         } else {
    //             /* Open this row */
    //             this.src = "lib/advanced-datatable/images/details_close.png";
    //             oTable.fnOpen(nTr, fnFormatDetails(oTable, nTr), 'details');
    //         }
    //     });
    // });
</script>
</body>
</html>
