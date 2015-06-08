<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main"/>
</head>

<body>

<input type="text" id="name"/>
<input type="button" id="submit" value="submit"/>

<div id="message"></div>
<script>
    jQuery(document).ready(function () {
        jQuery("#submit").click(function () {
            jQuery.ajax({
                url: "${createLink(controller: "formRemote",action: "ajaxRequest")}",
                type: "post",
                data: {name: jQuery("#name").val()},
                success: function (data) {
                    jQuery("#message").html(data);

                }

            });



        });

    })
</script>
</body>
</html>