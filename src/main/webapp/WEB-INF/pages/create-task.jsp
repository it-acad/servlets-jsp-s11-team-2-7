
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new Task</title>
    <link rel="stylesheet" href="/WEB-INF/Styles.css" type="text/css"/>
</head>
<body>
<%@include file="/WEB-INF/header.html"%>
<br>
<h2>Create new Task</h2>
<br>
<form action="/create-task" method="post">
    <table>
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
                <input list = "guestlist" id = "priority" name="priority">
                <datalist id = "guestlist" width="10px">
                    <option value = "LOW"> </option>
                    <option value = "MEDIUM"> </option>
                    <option value = "HIGH"> </option>
                </datalist>

            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="Create">
            </td>
            <td>
                <input type="reset" value="Clear">
            </td>

        </tr>

    </table>
</form>
</body>
</html>
