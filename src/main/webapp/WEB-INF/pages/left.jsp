<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
              
              	  <p class="centered"><a href="profile.html"><img src="${basePath}/assets/img/ui-sam.jpg" class="img-circle" width="60"></a></p>
              	  <h5 class="centered">欢迎您</h5>
              	  	
                 
                  <li class="sub-menu">
                      <a >
                          <i class="fa fa-desktop"></i>
                          <span>图书管理</span>
                      </a>
                      <ul class="sub">
                          <li><a  id="load-book-id">图书管理</a></li>
                          <li><a  id="load-type-id">分类管理</a></li>
                         <!-- <li><a  id="load-shelf-id">书架管理</a></li>-->
                      </ul>
                  </li>

                  <li class="sub-menu">
                      <a >
                          <i class="fa fa-cogs"></i>
                          <span>系统管理</span>
                      </a>
                      <ul class="sub">
                          <li><a  id="load-role-id">角色管理</a></li>
                          <li><a  id="load-menu-id">菜单管理</a></li>
                          <li><a  id="load-user-id">用户管理</a></li>
                      </ul>
                  </li>
                  
                  <li class="sub-menu">
                      <a  id="load-attachment-id" >
                          <i class="fa fa-book"></i>
                          <span>附件管理</span>
                      </a>
                      <ul class="sub">
                          <!-- <li><a  id="">未开发</a></li> -->
                      </ul>
                  </li>
                  
              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>

      <script type="text/javascript">
         $('#load-book-id').click(function (){
        	  var url="book/listUI.do?t="+Math.random(1000);
        	  $('#main-content').load(url);
          })
         $('#load-type-id').click(function(){
             var url="type/listUI.do?t="+Math.random(1000);
             $('#main-content').load(url);
         })
         $('#load-shelf-id').click(function(){
             var url="shelf/listUI.do?t="+Math.random(1000);
             $('#main-content').load(url);
         })
         $('#load-attachment-id').click(function(){
             var url="attachment/attachmentUI.do?t="+Math.random(1000);
             $('#main-content').load(url);
         })
         $('#load-role-id').click(function(){
             var url="role/listUI.do?t="+Math.random(1000);
             $('#main-content').load(url);
         })
         $('#load-menu-id').click(function(){
             var url="menu/listUI.do?t="+Math.random(1000);
             $('#main-content').load(url);
         })
         $('#load-user-id').click(function(){
             var url="user/listUI.do?t="+Math.random(1000);
             $('#main-content').load(url);
         })
      </script>
      <!--sidebar end-->