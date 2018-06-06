<%--
  Created by IntelliJ IDEA.
  User: sajal
  Date: 29/5/18
  Time: 3:40 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Edit contact</title>
</head>
<body>
<h1>Edit contact</h1>
<g:form action="update" id="${contact.id}">
    Name: <g:textField name="name"
                       value="${contact.name}"/><br />
    Phone Number: <g:textField name="phoneNumber"
                               value="${contact.phoneNumber}"/><br />
    <g:actionSubmit value="Update" />
</g:form>
</body>
</html>