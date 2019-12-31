
<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();

%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>我的留言</title>
<link href="css/stylemain.css" rel="stylesheet">
<link href="css/animation.css" rel="stylesheet">
<link href="css/lrtk.css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/js.js"></script>
</head>

<body>
<header>
	<nav id="nav">
    	<ul>
        	<li><a href="main.jsp">网站首页</a></li>
            <li><a href="addliuyan.jsp" target="_blank" title="创建留言">创建留言</a></li> 
              <li><a href="myliuyan.jsp" target="_blank" title="我的留言">我的留言</a></li> 
         &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<%=session.getAttribute("username") %>,您好 
          	&nbsp&nbsp&nbsp<a href="login.jsp"><i class="iconfont icon-084tuichu"></i><font color=white>退出登录</font></a>
        </ul>
         <script src="js/silder.js"></script><!--获取当前页导航 高亮显示标题--> 
    </nav>
</header>

<div id="mainbody">
	<div class="info">
        <figure>
            <img src="images/maintop.jpg" >
            
        </figure>
        <div class="card">
        	 <h1>留言搜索</h1>
               <div class="search">
                <form class="searchform" method="post" action="searchtitle.jsp">
                    <input type="text" placeholder="输入留言标题" name="title" onFocus="" onBlur="">
               
            </div>
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<button class="layui-btn" lay-submit lay-filter="formDemo" onclick="searchtitle.jsp">搜索</button>
        </div>
    </div>
 </form>
<!--info结束-->
</header>



<!--博客的列表开始-->

    <div class="blogs">
        <ul class="bloglist">
            <li>
                <div class="row_box">
                    <!--三角形-->
                    <!--圆形-->
                       <h3 class="title">&nbsp&nbsp&nbsp留言编号</h3>
                       &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<button class="layui-btn layui-btn-xs" ><a href="updatemassage.jsp?num=">修改</a></button>
							<button class="layui-btn layui-btn-xs" ><a href="deleteliuyan.jsp?num=">删除</a></button>
                    <h2 class="title"> <a href="view.jsp?num=>"></a></h2>
                    <ul class="textinfo">
                       
					<a href="download.jsp?downloadnum="><img src="" width="100" height="100"/></a>
                        <p>
                        
					</p>
                    </ul>
                    <ul class="details">
                       
                        <li class="comments">发布人：</li>
                        <li class="icon_time"></li>
                    </ul>
                </div>
            </li>
         
          
        </ul>
 
    <!--博客列表部分结束-->
    
    
    <!--右半部分开始-->
        <aside>
           
        </aside>
	</div>
    <!--blogs结束-->
</div>
<!--mainbody结束-->

              			
	<form method="POST" action="main.jsp">
<input type="text" style="width:35px; height:25px;"  name="pagenum" >
<input type="submit" value="跳转">
</form>


</body>
</html>
