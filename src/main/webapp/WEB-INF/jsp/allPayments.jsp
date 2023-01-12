<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pl-PL">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
        <title>all Payments</title>
    </head>

    <body>
        <section>
            <div class = "jumbotron">
                <div class ="container">
                    <h1>All Payments</h1>

                    <a href="/payments/addNew">Add new payment</a>
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Value</th>
                                <th>Edit</th>
                                <th>Delete</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${payments}" var="payment">
                                <tr>
                                    <td>${payment.title}</td>
                                    <td><a href="/payments/edit/${payment.id}">Edit</a></td>
                                    <td><a href="/payments/delete/${payment.id}">Delete</a></td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </section>
    </body>
</html>