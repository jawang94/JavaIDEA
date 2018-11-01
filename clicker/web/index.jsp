<%--
  Created by IntelliJ IDEA.
  User: home
  Date: 11/1/18
  Time: 11:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <link rel="stylesheet" type="text/css" href="/index.css" >
  </head>
  <body>
    <h1>You have clicked this button ${clicks} times.</h1>
    <form action="clickController" method="post">
      <input type="hidden" name="click" value="1">
      <button type="submit">Click me bro</button>
    </form>
  </body>
</html>
