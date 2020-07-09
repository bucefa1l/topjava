
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<html lang="ru">
<head>
    <title>Meals</title>
    <style>
        .normal {color: green;}
        .exceeded {color: red;}
    </style>
</head>
<body>
<section>
<h3><a href="index.html">Home</a></h3>
<hr>
<table border="1" cellspacing="2" cellpadding="8">
    <thead>
    <tr>
        <td>Date</td>
        <td>Description</td>
        <td>Calories</td>
    </tr>
    </thead>
    <c:forEach items="${mealsList}" var="meal">
        <tr class="${meal.excess ? 'exceeded' : 'normal' }">
            <td>${meal.dateTime}</td>
            <td>${meal.description}</td>
            <td>${meal.calories}</td>
        </tr>
    </c:forEach>
</table>
</section>
</body>
</html>
