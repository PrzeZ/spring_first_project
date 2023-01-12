<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<h1>All Payments<h1>

<ul>
    <c:forEach items="${payments}" var="payment">
        <li>${payment}</li>
    </c:forEach>
</ul>