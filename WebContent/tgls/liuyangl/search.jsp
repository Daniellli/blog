<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
		<!-- Google Chrome Frame也可以让IE用上Chrome的引擎: -->
		<meta name="renderer" content="webkit">
		<!--国产浏览器高速模式-->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="author" content="穷在闹市" />
		<!-- 作者 -->
		<meta name="revised" content="穷在闹市.v3, 2019/05/01" />
		<!-- 定义页面的最新版本 -->
		<meta name="description" content="网站简介" />
		<!-- 网站简介 -->
		<meta name="keywords" content="搜索关键字，以半角英文逗号隔开" />
		<title>穷在闹市出品</title>

		<!-- 公共样式 开始 -->
		<link rel="stylesheet" type="text/css" href="../../css/base.css">
		<link rel="stylesheet" type="text/css" href="../../css/iconfont.css">
		<script type="text/javascript" src="../../framework/jquery-1.11.3.min.js"></script>
		<link rel="stylesheet" type="text/css" href="../../layui/css/layui.css">
		<script type="text/javascript" src="../../layui/layui.js"></script>
		<!-- 滚动条插件 -->
		<link rel="stylesheet" type="text/css" href="../../css/jquery.mCustomScrollbar.css">
		<script src="../../framework/jquery-ui-1.10.4.min.js"></script>
		<script src="../../framework/jquery.mousewheel.min.js"></script>
		<script src="../../framework/jquery.mCustomScrollbar.min.js"></script>
		<script src="../../framework/cframe.js"></script><!-- 仅供所有子页面使用 -->
		<!-- 公共样式 结束 -->
<script language="javascript"> 

//选中全选按钮，下面的checkbox全部选中 
var selAll = document.getElementById("selAll"); 
function selectAll() 
{ 
  var obj = document.getElementsByName("checkAll"); 
  if(document.getElementById("selAll").checked == false) 
  { 
  for(var i=0; i<obj.length; i++) 
  { 
    obj[i].checked=false; 
  } 
  }else 
  { 
  for(var i=0; i<obj.length; i++) 
  {	  
    obj[i].checked=true; 
  }	
  } 
  
} 

//当选中所有的时候，全选按钮会勾上 
function setSelectAll() 
{ 
var obj=document.getElementsByName("checkAll"); 
var count = obj.length; 
var selectCount = 0; 

for(var i = 0; i < count; i++) 
{ 
if(obj[i].checked == true) 
{ 
selectCount++;	
} 
} 
if(count == selectCount) 
{	
document.all.selAll.checked = true; 
} 
else 
{ 
document.all.selAll.checked = false; 
} 
} 

//反选按钮 
function setNoSelect() { 
var checkboxs=document.getElementsByName("checkAll"); 
for (var i=0;i<checkboxs.length;i++) { 
  var e=checkboxs[i]; 
  e.checked=!e.checked; 
  setSelectAll(); 
} 
} 

</script> 
	</head>

	<body>
	<%     int search=Integer.parseInt(request.getParameter("search"));
				Class.forName("org.gjt.mm.mysql.Driver");
				String url = "jdbc:mysql://localhost:3306/liuyan?user=root&password=123&useUnicode=true&characterEncoding=UTF-8";
				Connection conn = DriverManager.getConnection(url);
				Statement stmt = conn.createStatement(
						ResultSet.TYPE_SCROLL_INSENSITIVE,
						ResultSet.CONCUR_UPDATABLE);
						String sql="select * from liuyan where num='"+search+"' ";
						ResultSet result=stmt.executeQuery(sql);
						if (result.next()) {%>
	<!--搜索功能实现-->
	<div class="cBody">
			<div class="console">
				<form class="layui-form" action="search.jsp">
					<div class="layui-form-item">
						<div class="layui-input-inline">
							<input type="text" name="search" required lay-verify="required" placeholder="输入留言编号" autocomplete="off" class="layui-input" >
						</div>
						
						<button class="layui-btn" lay-submit lay-filter="formDemo" onclick="search.jsp">检索</button>
					</div>
				</form>
			
			
			
			<!--留言管理-->	
	<table class="layui-table">
			
					<tr>
						<th><input type="checkbox" id="selAll" onclick="selectAll();" />全选 
<input type="checkbox" id="inverse" onclick="setNoSelect();" />反选 <input type="submit" class="layui-btn layui-btn-xs" value="删除"></th>
						<th>留言编码</th>
						<th>留言标题</th>
						
						<th>留言日期</th>
					<th>操作</th>
					</tr>


	
			
			
				
					
							
				
				      
					
					

			
			
			
			
					<tr>
						<td><input type="checkbox" name="checkAll" id="checkAll" onclick="setSelectAll();"  value="<%=result.getInt(1) %>" /></td>
						<td><%=result.getString("num") %></td>
						<td><%=result.getString("title") %></td>
						<td><%=result.getString("Date") %></td>
						<td>
							<button class="layui-btn layui-btn-xs">修改</button>
							<button class="layui-btn layui-btn-xs">详细内容</button>
						</td>
					</tr>
				         
<% } %>

			</table>
			
			

	</body>

</html>