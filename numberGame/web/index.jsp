<%--
  Created by IntelliJ IDEA.
  User: home
  Date: 11/1/18
  Time: 12:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>The Great Number Game</title>
    <style>
      * {
        background-color:whitesmoke;
      }
      h1 {
        margin: 20% 0 0 50%;
        font-size: 50px;
        color:cornflowerblue;
      }
      h2 {
        margin: 0 0 0 50%;
        color:coral;
      }
      p {
        margin: 0 0 0 50%;
        font-size: 15px;
        color: red;
      }
      button {
        margin: 5px 5px 5px 50%;
        width: 100px;
        height: 50px;
        font-size: 15px;
        border: 5px solid black;
        background-color: white;
      }
      .box {
        margin: 10px 10px 10px 50%;
        height: 30px;
        background-color: white;
      }
    </style>
  </head>
  <body>
  <h1>WELCOME TO THE GREAT NUMBER GAME!</h1>
  <h2>I am thinking of a number between 1 and 100</h2>
  <h2>Take a guess!</h2>
  <form action="/guessController" method="post">
    <input type="text" name="guess" class="box" placeholder="Any number 1 to 100">Pick a number bro</button>
    <button type="submit" class="submit">Submit</button>
  </form>
  </body>
</html>
