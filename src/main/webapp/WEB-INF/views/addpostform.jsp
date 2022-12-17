<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

<h1>Add New Menu</h1>
<form action="addok" method="post">
    <table id = "edit">

        <tr><td>Menu Name in Korean : </td><td><input type="text" name="menu_name"/></td></tr>

        <tr><td>Menu Name in English : </td><td><input type="text" name="menu_name_eng"/></td></tr>

        <tr><td>ICE or Hot : </td>
            <td>
                <input type = "radio" name = "ice_hot" value = "ICE">ICE
                <input type = "radio" name = "ice_hot" value = "HOT">HOT
            </td>
        </tr>

        <tr><td>Category :</td>
            <td><select name = "category">
                <option value = "Coffee" selected>Coffee</option>
                <option value = "Ade">Ade</option>
                <option value = "Non-Coffee">Non-Coffee</option>
                <option value = "Tea">Tea</option>
                <option value = "Cake">Cake</option>
            </select></td>
        </tr>

        <%--<tr><td>Menu Name : </td><td><input type="text" name="menu_name"/></td></tr> --%>
        <tr><td>Price :</td><td><input type="text" name="price"/></td></tr>

        <tr><td>Content :</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>

        <tr><td>Take-Out Available : </td>
            <td><select name = "takeout">
                <option value = "Yes">Take-Out(O)</option>
                <option value = "No">Take-Out(X)</option>
            </select></td>
        </tr>

        <tr><td>Sold-Out Status : </td>
            <td><select name = "soldout">
                <option value = "Yes">Sold-Out(O)</option>
                <option value = "No">Sold-Out(X)</option>
            </select></td>
        </tr>
    </table>
    <br>
    <div id = "btn_group">
        <button type = "button" onclick="location.href = 'list'">See List</button>
        <button type = "submit">Add</button>
    </div>
</form>

</body>
</html>