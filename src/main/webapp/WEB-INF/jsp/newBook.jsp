<%@ taglib prefix="spring" uri="http://www.springframework.og/tags" %>
<%@ taglib prefix="form uri="http://www.springframework.org/tags/form" %>
<html>
<body>
    <h1>Add new bok</h1>

    <form:form modelAttribute="form">
        <form:errors path="" element="div"/>
        <div>
            <form:label path="title">Title</form:label>
            <form:input path="title"/>
            <form:errors path="title"/>
        </div>
        <div>
            <input type="submit">
        </div>
    </form:form>
</body>
</html>