<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main"/>
</head>

<body>
<g:remoteLink controller="formRemote" action="show3" update="updateDiv">
    update div
</g:remoteLink>
<div id="updateDiv">This div will be updated...</div>
</body>
</html>