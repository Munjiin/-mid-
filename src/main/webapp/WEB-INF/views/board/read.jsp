<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="../includes/header.jsp"%>


<div class="row">
   <div class="col-lg-12">

      <h1 class="page-header">Read</h1>
   </div>
   <!-- /.col-lg-12 -->
</div>

<div class="row">
   <div class="col-lg-12">
      <div class="panel panel-default">
         <div class="panel-heading">Board Read</div>
         <!-- /.panel-heading -->
         <div class="panel-body">


            <!-- /.row -->
            <div class="row">
               <div class="col-lg-12">


                  <div class="form-group">
                     <label>Title</label> <input class="form-control" name='title'
                        value='<c:out value="${board.title}"/>' readonly="readonly">
                  </div>
                  <div class="form-group">
                     <label>Writer</label> <input class="form-control" name='writer'
                        value='<c:out value="${board.writer}"/>' readonly="readonly">
                  </div>
                  <div class="form-group">
                     <label>Text area</label>
                     <textarea class="form-control" name='content' rows="20"><c:out
                           value="${board.content}" /></textarea>
                  </div>
                  <form role="form" action="/board/list" method="get">
                     <input type='hidden' name='page' value='${pageObj.page}'>
                     <button type="submit" class="btn btn-default">목록보기</button>
                  </form>
                  <form role="form" action="/board/modify" method="get">
                     <input type='hidden' name='page' value='${pageObj.page}'>
                     <input type='hidden' name='bno' value='${pageObj.bno}'>
                     <button type="submit" class="btn btn-primary">수정하기</button>
                  </form>


               </div>
            </div>
            <!-- /.panel-body -->
         </div>
         <!-- /.panel -->
      </div>
   </div>
</div>


<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
   aria-labelledby="myModalLabel" aria-hidden="true">
   <div class="modal-dialog">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal"
               aria-hidden="true">&times;</button>
            <h4 class="modal-title" id="myModalLabel">SUCCESS</h4>
         </div>
         <div class="modal-body"></div>
         <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
         </div>
      </div>
      <!-- /.modal-content -->
   </div>
   <!-- /.modal-dialog -->
</div>


<%@include file="../includes/footer.jsp"%>


<script>
   $(document).ready(function() {
      var msg = $("#myModal");
      var result = '<c:out value="${result}"/>';

      if (result === 'SUCCESS') {
         $(".modal-body").html("수정이 성공적으로 처리되였습니다.");
         msg.modal("show");

      }

   });
</script>

</body>

</html>