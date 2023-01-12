<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<body>
    <h1>Edit payment</h1>

    <form:form modelAttribute="form" method="POST" action="/payments/save">
        <form:errors path="" element="div"/>
        <div>
            <form:hidden path="id"/>

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