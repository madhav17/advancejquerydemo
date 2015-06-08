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
            jQuery.get(
                    "${createLink(controller: "formRemote",action: "ajaxAction2")}",
                    {name: jQuery("#name").val()}
            ).done(function (data) {
                        alert(data);
                    }).fail(function () {
                        alert("fail");
                    })
        });
    });
</script>

</body>
</html>