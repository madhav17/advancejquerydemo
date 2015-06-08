<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main">

</head>

<body>
<g:remoteField action="show2" update="titleDiv"
               name="title"/>
<div id="titleDiv">I'm updated with the new title!</div>
<g:setProvider library="jquery"/>
</body>
</html>