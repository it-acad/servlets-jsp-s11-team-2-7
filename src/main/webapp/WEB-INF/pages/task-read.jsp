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

<tr>
    <td>Id: </td>
    <td>
        <strong><%= task.getId()%></strong>
    </td>
</tr>
<tr>
    <td>Title: </td>
    <td>
        <strong><%= task.getTitle()%></strong>
    </td>
</tr>
<tr>
    <td>Priority: </td>
    <td>
        <strong><%= task.getPriority()%></strong>
    </td>
</tr>
</body>
</html>
