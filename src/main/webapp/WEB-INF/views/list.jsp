<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@page import="com.crud.myapp.board.BoardDAO, com.crud.myapp.board.BoardVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>free board</title>
<style>
#list {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#list td, #list th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align:center;
}
#list tr:nth-child(even){background-color: #f2f2f2;}
#list tr:hover {background-color: #ddd;}
#list th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: chocolate;
  color: white;
}
#btn_group button{
	border-radius: 5px;
	border : 2px chocolate;
	background-color : #f2f2f2;
	color: chocolate;
	padding : 5px ;
	font-size : medium;
}
#btn_group button:hover{
	color:white ;
	background-color: chocolate;
}
a:link{
	text-decoration: none;
	color: black;
	font-weight: bold;
}
a:visited{
	text-decoration: none;
	color:black;
}
a:hover{
	text-decoration: none;
	font-weight: bolder;
	color:chocolate;
}
a:active{
	text-decoration: none;
}
</style>
<script>
	function delete_ok(id){
		var a = confirm("Are you SURE to delete?");
		if(a) location.href='deletepost.jsp?id=' + id;
	}
</script>
</head>
<body>

<h1>
	<img src='../resources/img/coffee_cup.png' height="40">
	My Coffee List
	<img src='../resources/img/coffee_cup.png' height="40">
</h1>

<%--
	BoardDAO boardDAO = new BoardDAO();
	List<BoardVO> list = boardDAO.getBoardList();
	request.setAttribute("list",list);
--%>
<table id="list" width="90%">
<tr>
	<th>Id</th>
	<th>Category</th>
	<th>Sold Out</th>
	<th>Menu Name(kor)</th>
	<th>Menu Name(eng)</th>
	<th>ICE/HOT</th>
	<th>Price</th>
	<th>Content</th>
	<th>Take-Out</th>
	<th>Update Date</th>
	<th>Edit</th>
	<th>Delete</th>
</tr>
<c:forEach items="${list}" var="u">
	<tr>
		<td>${u.seq}</td>
		<td>${u.category}</td>
		<td>${u.soldout}</td>
		<td>${u.menu_name}</td>
		<td>${u.menu_name_eng}</td>
		<td>${u.ice_hot}</td>
		<td>${u.price}</td>
		<td>${u.content}</td>
		<td>${u.takeout}</td>
		<td>${u.regdate}</td>
		<td><a href="editform/${u.seq}">Edit</a></td>
		<td><a href="deleteok/${u.seq}">Delete</a></td>
	</tr>
</c:forEach>
</table>
<br>
<div id = "btn_group">
<button type = "button" onclick="location.href = 'add'">Add New Menu</button>
<button type = "button" onclick = "location.href='../login/logout'">Log Out</button>
</div>

</body>
</html>