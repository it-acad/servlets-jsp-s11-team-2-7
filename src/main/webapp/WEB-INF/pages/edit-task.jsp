<%@ page import="com.softserve.itacademy.model.Task" %>
<%@ page import="com.softserve.itacademy.model.Priority" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit existing Task</title>
</head>
<body>
<%@include file="/WEB-INF/header.html"%>
<br>
<h2>Edit existing Task</h2>
<br>
<form action="/edit-task" method="post">

    <%

        Task task = (Task)request.getAttribute("task");
    %>
    <table>
        <tr>
            <td>
                <label for="id">id:</label>
            </td>
            <td>
                <input type = "text" id = "id" name="id" value="<%=task.getId()%>" disabled>
            </td>
        </tr>
        <tr>
            <td>
                <label for="title">Name:</label>
            </td>
            <td>
                <input type = "text" id = "title" name="title" >
            </td>
        </tr>
        <tr>
            <td>
                <label for="priority">Priority:</label>
            </td>
            <td>
                <input list = "guestlist" id = "priority" name="priority" >
                <datalist id = "guestlist">
                    <option value = "LOW"> </option>
                    <option value = "MEDIUM"> </option>
                    <option value = "HIGH"> </option>
                </datalist>

            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="Update">
            </td>
            <td>
                <input type="reset" value="Clear">
            </td>

        </tr>

    </table>
</form>
</body>
</html>
