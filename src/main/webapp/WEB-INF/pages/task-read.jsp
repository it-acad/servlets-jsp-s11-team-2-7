<%@ page import="com.softserve.itacademy.model.Task" %><%--
  Created by IntelliJ IDEA.
  User: Taras
  Date: 05-Jan-21
  Time: 11:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Read existing Task</title>
</head>
<body>
<%@include file="/WEB-INF/header.html"%>
<br>
<h2>Read existing Task</h2>
<% Task task = (Task) request.getAttribute("task"); %>

<h3>Id:<strong><%= task.getId()%></strong></h3>

<h3>Title:<strong><%= task.getTitle()%></strong></h3>

<h3>Priority: <strong><%= task.getPriority()%></strong></h3>


</body>
</html>
