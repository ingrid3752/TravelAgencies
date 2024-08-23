<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Accommodation</title>
    <link href="${pageContext.request.contextPath}/css/reset.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/accom.css" rel="stylesheet">
</head>
<body>
    <header>
        <h1>Accommodation</h1>
    </header>

    <nav>
        <ul>
            <li><a href="<%= request.getContextPath() %>/index">Home</a></li>
            <li><a href="<%= request.getContextPath() %>/rest">Restaurants</a></li>
            <li><a href="<%= request.getContextPath() %>/goods">Goods</a></li>
        </ul>
    </nav>

    <section>
        <h2>Find the best accommodations</h2>
        <p>Explore a variety of accommodations to suit your needs.</p>
    </section>

    <footer>
        <p>&copy; 2024 Accommodation Service</p>
    </footer>
</body>
</html>