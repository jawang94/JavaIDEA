<%--
  Created by IntelliJ IDEA.
  User: home
  Date: 11/1/18
  Time: 8:51 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Index</title>
  </head>
  <body>
    <h1>Create a dog</h1>
    <form action="/ShowDog" method="post">
      <p>Name: <input type="text" name="name" /></p>
      <p>Breed: <input type="text" name="breed" /></p>
      <p>Weight: <input type="text" name="weight" /></p>
      <p><input type="submit" value="Submit" />
    </form>
    <h1>Create a cat</h1>
    <form action="/ShowCat" method="post">
      <p>Name: <input type="text" name="name" /></p>
      <p>Breed: <input type="text" name="breed" /></p>
      <p>Weight: <input type="text" name="weight" /></p>
      <p><input type="submit" value="Submit" />
    </form>
  </body>
</html>
