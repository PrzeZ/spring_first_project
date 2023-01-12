<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<body>
    <h1>Add new payment</h1>

    <form:form modelAttribute="form" action="/payments/save">
        <form:errors path="" element="div"/>
        <div>
            <form:label path="title">Value</form:label>
            <form:input path="title"/>
            <form:errors path="title"/>
        </div>
        <div>
            <input type="submit" value="Save"/>
        </div>
    </form:form>
</body>
</html>