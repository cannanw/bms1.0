<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri= "http://java.sun.com/jsp/jstl/core" prefix= "c" %> 
<c:set var="basePath" value="${pageContext.request.contextPath}"/>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>BMS图书管理系统</title>

    <!-- Bootstrap core CSS -->
    <link href="${basePath}/assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="${basePath}/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="${basePath}/assets/js/gritter/css/jquery.gritter.css" />
    <link rel="stylesheet" type="text/css" href="${basePath}/assets/lineicons/style.css">    
    
    <!-- Custom styles for this template -->
    <link href="${basePath}/assets/css/style.css" rel="stylesheet">
    <link href="${basePath}/assets/css/style-responsive.css" rel="stylesheet">

    <!-- plugins css -->
    <link rel="stylesheet" href="${basePath}/assets/plugins/ztree/css/metroStyle/metroStyle.css">
    <link rel="stylesheet" href="${basePath}/assets/plugins/treegrid/jquery.treegrid.css">

    <script src="${basePath}/assets/js/chart-master/Chart.js"></script>
    <script src="${basePath}/assets/js/jquery-1.8.3.min.js"></script>
    
  </head>

  <body>

  <section id="container" >
      <!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
     <%@include file="header.jsp" %>
      
      <!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
      <%@include file="left.jsp" %>
      
      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
      <!--main content start-->
      <section id="main-content">
          <!-- 在此使用ajax异步填充界面 -->
      </section>

      <!--main content end-->
      <!--<%@include file="footer.jsp" %>-->
  </section>

  <!-- Modal -->
  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog">
          <div class="modal-content">
              <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                  <h4 class="modal-title" id="myModalLabel"><!-- 模态框标题 --></h4>
              </div>
              <div class="modal-body">
                  <!-- 将内容填充在此 -->
              </div>
              <div class="modal-footer">
                  <button type="button" class="btn btn-primary modalOk" >保存</button>
                  <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
              </div>
          </div>
      </div>
  </div>
  </div><!-- /showback -->


  <!-- js placed at the end of the document so the pages load faster -->
    <script src="${basePath}/assets/js/jquery.js"></script>
    
    <script src="${basePath}/assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="${basePath}/assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="${basePath}/assets/js/jquery.scrollTo.min.js"></script>
    <script src="${basePath}/assets/js/jquery.nicescroll.js" type="text/javascript"></script>

    <!--common script for all pages-->
    <script src="${basePath}/assets/js/common-scripts.js"></script>
    <script type="text/javascript" src="${basePath}/assets/js/gritter/js/jquery.gritter.js"></script>
    <script type="text/javascript" src="${basePath}/assets/js/gritter-conf.js"></script>
    <script type="text/javascript" src="${basePath}/assets/js/jquery.form.js"></script>

    <!-- js plugins -->
    <script src="${basePath}/assets/plugins/layer/layer.js"></script>
    <script src="${basePath}/assets/plugins/treegrid/jquery.treegrid.min.js"></script>
    <script src="${basePath}/assets/plugins/treegrid/jquery.treegrid.bootstrap3.js"></script>
    <script src="${basePath}/assets/plugins/treegrid/jquery.treegrid.extension.js"></script>
    <script src="${basePath}/assets/plugins/treegrid/tree.table.js"></script>
    <script src="${basePath}/assets/plugins/ztree/jquery.ztree.all.min.js"></script>

    <!--script for this page-->
    <script type="text/javascript" src="${basePath}/assets/js/bootstrap-datepicker.min.js"></script>
    <script type="text/javascript" src="${basePath}/bms/common/index.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            //doGetUserMenus();
        $.gritter.add({
            // (string | mandatory) the heading of the notification
            title: '欢迎使用图书管理系统!',
            // (string | mandatory) the text inside the notification
            text: '开始你的阅读生涯吧!',
            // (string | optional) the image to display on the left
            image: 'assets/img/ui-sam.jpg',
            // (bool | optional) if you want it to fade out on its own or just sit there
            sticky: true,
            // (int | optional) the time you want it to be alive for before fading out
            time: '',
            // (string | optional) the class name you want to apply to that specific message
            class_name: 'my-sticky-class'
        });

        return false;
        });
	</script>

  </body>
</html>
