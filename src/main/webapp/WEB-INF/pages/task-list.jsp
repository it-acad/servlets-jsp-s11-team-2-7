<%@ page import="com.softserve.itacademy.model.Task" %>
<%@ page import="java.util.List" %>
<%@ page import="com.softserve.itacademy.model.Priority" %>
<%@ page import="com.softserve.itacademy.repository.TaskRepository" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List of tasks</title>
</head>
<body>
<%@include file="/WEB-INF/header.html"%>
<br>
<h2>List of Tasks</h2>
<br>
<table border="1">
    <tr>
        <th>No.</th>
        <th>Name</th>
        <th>Priority</th>
        <th colspan = "3">Operations</th>
    </tr>
    <%
        for(Task task: TaskRepository.getTaskRepository().all()){
        //if ((List<Task>)request.getAttribute("tasks")!=null)
        //for(Task task : (List<Task>)request.getAttribute("tasks")){
    %>
    <tr>
        <td><%=task.getId()%></td>
        <td><%=task.getTitle()%></td>
        <td><%=task.getPriority()%></td>
        <td>
            <a href="task-read?id=<%=task.getId()%>">Read</a>
        </td>
        <td>
            <a href="/edit-task?id=<%=task.getId()%>">Edit</a>
        </td>
        <td>
            <a href="delete-task?id=<%=task.getId()%>">Delete</a>
        </td>
    </tr>

    <%
       }
    %>
</table>
</body>
</html>
