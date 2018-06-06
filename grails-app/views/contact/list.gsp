<%--
  Created by IntelliJ IDEA.
  User: sajal
  Date: 29/5/18
  Time: 3:41 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>List Contacts</title>
</head>
<body>
<h1>List Contacts</h1>
<g:each in="${contacts}" var="contact">
    Name: ${contact.name}<br />
    Phone Number: ${contact.phoneNumber}<br />
    <a href="show/${contact.id}">Show</a><br />
    <a href="edit/${contact.id}">Edit</a><br />
    <a href="javascript:void(0);" onclick="deleteuser(${contact.id})">Delete</a><br /><br />
</g:each>
<g:link action="create">Create new Contact</g:link>
<script type="text/javascript">
    function deleteuser(id){
        if (confirm("Are you sure you want to Delete this User?")) {
            window.location.href="delete/"+id;
        }
    }
</script>
</body>
</html>