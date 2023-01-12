<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<body>
    <h1>Edit book</h1>

    <form:form modelAttribute="form" method="POST" action="/books/save">
        <form:errors path="" element="div"/>
        <div>
            <form:hidden path="id"/>

            <form:label path="title">Title</form:label>
            <form:input path="title"/>
            <form:errors path="title"/>
        </div>
        <div>
            <input type="submit" value="Save"/>
        </div>
    </form:form>
</body>
</html>