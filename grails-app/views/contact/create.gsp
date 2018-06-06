<%--
  Created by IntelliJ IDEA.
  User: sajal
  Date: 29/5/18
  Time: 3:40 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create new contact</title>
</head>

<body>
<h1>Create new contact</h1>
<g:form action="save" method="post">
    Name: <g:textField name="name" required="required" /><br />
    Phone Number: <g:textField name="phoneNumber" required="required" /><br />
    <g:actionSubmit value="Save" />
</g:form>
</body>
</html>