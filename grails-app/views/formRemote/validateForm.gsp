<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta charset="utf-8">
    <g:javascript src="jquery-1.11.1.min.js"/>
    <g:javascript src="jquery.validate.js"/>
    <script>
        $(document).ready(function () {
            $("#commentForm2").validate({
                rules: {
                    name: {
                        required: true
                    },
                    email: {
                        required: true,
                        email: true
                    },
                    salary: {
                        digits: true,
                        required:true,
                        minlength:2
                    }

                },

                messages: {
                    name: {
                        required: "Please enter the name...."
                    },
                    email: {
                        required: "Email is required....",
                        email: "This should be an email address..."
                    },
                    salary: {
                        digits:"This should contain numbers only...",
                        required:"Please enter the Salary....",
                         minlength:"minlength is 2..."
                    }
                }
            });
        });
    </script>

</head>

<body>

<div id="main">

    <form class="cmxform" id="commentForm2" method="post"
          action="${createLink(controller: 'formRemote', action: 'myAction')}">
        <fieldset>
            <legend>Please enter your email address</legend>

            <p>
                <label>Name *</label>
                <input id="name" name="name">
            </p>

            <p>
                <label>E-Mail *</label>
                <input id="email" name="email">
            </p>

            <p>
                <label>Salary *</label>
                <input id="salary" name="salary">
            </p>

            <p>
                <input class="submit" type="submit" value="Submit">
            </p>
        </fieldset>
    </form>
</div>

</body>
</html>