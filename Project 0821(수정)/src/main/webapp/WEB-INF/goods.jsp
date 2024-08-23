<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Goods</title>
    <link href="${pageContext.request.contextPath}/css/reset.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/goods.css" rel="stylesheet">
</head>
<body>
    <header>
        <h1>Goods</h1>
    </header>

    <nav>
        <ul>
            <li><a href="<%= request.getContextPath() %>/index">Home</a></li>
            <li><a href="<%= request.getContextPath() %>/accom">Accommodations</a></li>
            <li><a href="<%= request.getContextPath() %>/rest">Restaurants</a></li>
        </ul>
    </nav>

    <section>
        <h2>Explore a variety of goods</h2>
        <p>Shop for exclusive merchandise and souvenirs.</p>
    </section>

    <footer>
        <p>&copy; 2024 Goods Service</p>
    </footer>
</body>
</html>