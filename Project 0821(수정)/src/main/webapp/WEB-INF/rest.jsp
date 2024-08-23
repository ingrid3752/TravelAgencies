<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Restaurant</title>
    <link href="${pageContext.request.contextPath}/css/reset.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/rest.css" rel="stylesheet">
</head>
<body>
    <header>
        <h1>Restaurant</h1>
    </header>

    <nav>
        <ul>
            <li><a href="<%= request.getContextPath() %>/index">Home</a></li>
            <li><a href="<%= request.getContextPath() %>/accom">Accommodations</a></li>
            <li><a href="<%= request.getContextPath() %>/goods">Goods</a></li>
        </ul>
    </nav>

    <section>
        <h2>Discover the best dining experiences</h2>
        <p>Find restaurants that cater to all tastes and preferences.</p>
    </section>

    <footer>
        <p>&copy; 2024 Restaurant Service</p>
    </footer>
</body>
</html>