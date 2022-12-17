<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.crud.myapp.board.BoardDAO, com.crud.myapp.board.BoardVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>

</head>
<style>
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
</style>

<body>


<%--
	BoardDAO boardDAO = new BoardDAO();
	String id=request.getParameter("id");	
	BoardVO u=boardDAO.getBoard(Integer.parseInt(id));
--%>

<h1>Edit Menu</h1>
<form:form modelAttribute="u" method="post" action="../editok">
	<form:hidden path="seq"/>
	<table id = "edit">
		<tr><td>Menu Name in Korean : </td><td><form:input path="menu_name"/></td></tr>
		<tr><td>Menu Name in English : </td><td><form:input path="menu_name_eng"/></td></tr>

		<tr><td>ICE or Hot : </td>
		<td>
			<form:radiobutton path="ice_hot" value = "ICE" label = "ICE"/>
			<form:radiobutton path="ice_hot" value = "HOT" label= "HOT"/>
		</td>
		</tr>

		<tr><td>Category : </td>
			<td><form:select path="category">
				<form:option value = "Coffee" label = "Coffee" />
				<form:option value = "Non-Coffee" label = "Non-Coffee" />
				<form:option value = "Ade" label = "Ade" />
				<form:option value = "Tea" label = "Tea" />
				<form:option value = "Cake" label = "Cake" />
			</form:select></td>
		</tr>
		<tr><td>Price :</td><td><form:input path="price"/></td></tr>
		<tr><td>Content :</td><td><form:textarea cols="50" rows="5" path="content"/></td></tr>

		<tr><td>Takeout : </td>
			<td><form:select path="takeout">
				<form:option value = "Yes" label = "Take-Out(O)" />
				<form:option value = "No" label = "Take-Out(X)" />
			</form:select></td>
		</tr>

		<tr><td>Sold-Out Status : </td>
			<td><form:select path="soldout">
				<form:option value = "Yes" label = "Sold-Out(O)" />
				<form:option value = "No" label = "Sold-Out(X)" />
			</form:select></td>
		</tr>
	</table>
	<br>

	<div id = "btn_group">
		<input type = "submit" value = "Edit"/>
		<input type = "button" value = "cancel" onclick="history.back(-1)"/>
	</div>
</form:form>


</body>
</html>