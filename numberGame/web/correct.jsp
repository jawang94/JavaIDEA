<%--
  Created by IntelliJ IDEA.
  User: home
  Date: 11/1/18
  Time: 12:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Results!</title>
    <style>
        body {
            padding: 10px;
        }
        .wrapper {
            border: 5px solid black;
            padding: 0px 20px 20px 20px;
            width: 400px;
        }
        h1 {
            text-decoration: underline;
        }
        p {
            font-size: 20px;
            font-weight: 600;
        }
        button {
            border-radius: 10px;
            background:lightcyan;
            width: 100px;
            height: 40px;
            font-size: 20px;
            font-weight: 500;
            margin-left: 300px;
        }
    </style>
</head>

<body>
<div class="wrapper" style="background-color:${backgroundColor}">
    <h1>${result}</h1>
    <form action="resetController" method="post">
        <button type="submit">Play Again</button>
    </form>
</div>
</body>
</html>

