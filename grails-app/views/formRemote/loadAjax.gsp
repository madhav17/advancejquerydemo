<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main"/>
</head>

<body>
<input type="text" id="name"/>
<input type="button" id="submit" value="Submit"/>

<div id="message"></div>
<script>
    jQuery(document).ready(function () {
        jQuery("#submit").click(function () {
            jQuery("#message").load("${createLink(controller: "formRemote",action: "loadAction")}",{name: jQuery("#name").val()});
        });
    });
</script>

</body>
</html>