<%--
  Created by IntelliJ IDEA.
  User: Taras
  Date: 06-Jan-21
  Time: 10:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Task not found</title>
</head>
<body>
<%@include file="/WEB-INF/header.html"%>
<br>
<h2>Task with ID '<%=request.getParameter("id")%>' not found in To-Do List!</h2>
<strong>url:/read-task</strong>
</body>
</html>
