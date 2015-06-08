<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main"/>
    %{--<g:setProvider library="jquery"/>--}%
</head>

<body>

<form action="#" id="input_form">
    first name: <input type="text" name="first name"/><br/>
    last name: <input type="text" name="last name"/><br/>
    email: <input type="text" name="email"/><br/>
    <input type="submit" value="send" name="submit" id="submit"/>
</form>

<div id="message"></div>
<script>
    jQuery(document).ready(function () {
        alert("ready");

        jQuery("#input_form").on("submit", function (e) {
            e.preventDefault();
            jQuery.ajax({
                url: "${createLink(controller: "formRemote",action: "serializeAction")}",
                data: {queryString: $(this).serialize()},
                success: function (data) {
                    jQuery("#message").html(data);
                    var params = {name: "pulkit", age: 24};
                    alert(jQuery.param(params));
                }
            });
        });
    });

</script>
</body>
</html>