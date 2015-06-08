<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main">
</head>

<body>
<g:formRemote name="myRemoteForm" url="[controller: 'formRemote', action: 'show']" update="updateMe">
    Author: <input name="author" type="text"/>
    <g:submitButton name="Submit"/>
</g:formRemote>
<div id="updateMe">

</div>
</body>
</html>