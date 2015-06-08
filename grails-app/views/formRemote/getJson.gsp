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
            jQuery.getJSON(
                    "${createLink(controller: "formRemote",action: "ajaxActionJSON")}",
                    {name: jQuery("#name").val()},
                    function (data) {
                        jQuery("#message").html(data.name + " " + data.age);
                    }
            );
        });
    });
</script>

</body>
</html>