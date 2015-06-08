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
            jQuery("#message").html("Please wait....");
            jQuery.ajax({
                url: "${createLink(controller: "formRemote",action: "ajaxAction")}",
                data: {name: jQuery("#name").val()},
                success: function (data) {
                    jQuery("#message").html(data);
                }
            });
        });
    });
</script>
</body>
</html>