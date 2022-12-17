<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Insert title here</title>
  <style>
    img, label { display:inline-block;}
    label{ width:130px}
    #btn button{
      border-radius: 5px;
      border : 2px chocolate;
      background-color : #f2f2f2;
      color: chocolate;
      padding : 5px ;
      font-size : medium;
    }
    #btn button:hover{
      color:white ;
      background-color: chocolate;
    }


  </style>
</head>
<body>
<div style='width:100%;text-align:center;padding-top:100px'>
  <img src='../resources/img/coffee_img.jpg' height="250">
  <form method="post" action="loginOk">
    <br>
    <div><label>User ID: </label>
      <input type='text' name='userid' />
    </div>
    <div><label>Password: </label>
      <input type='password' name='password' />
    </div>
    <br>
    <div id = "btn">
      <button type='submit'>login</button>
    </div>
  </form>
</div>
</body>
</html>