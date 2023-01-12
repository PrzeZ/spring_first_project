<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<h1>All Books<h1>

<a href="/payments/addNew">Add new payment</a>

<table>
    <tr>
        <th>Value</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach items="${payments}" var="payment">
        <tr>
            <td>${payment.title}</td>
            <td><a href="/payments/edit/${payment.id}">Edit</a></td>
            <td><a href="/payments/delete/${payment.id}">Delete</a></td>
        </tr>
    </c:forEach>
</table>