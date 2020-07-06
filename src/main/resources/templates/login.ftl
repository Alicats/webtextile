<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head lang="en">
    <meta charset="UTF-8">
    <title>Login Page | Amaze UI Example</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="format-detection" content="telephone=no">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="alternate icon" type="image/png" href="/Webtextile/amaze/assets/i/favicon.png">
    <link rel="stylesheet" href="/Webtextile/amaze/assets/css/amazeui.min.css"/>

    <script src="/Webtextile/amaze/assets/js/jquery.min.js"></script>

    <style>
        .header {
            text-align: center;
        }
        .header h1 {
            font-size: 200%;
            color: #333;
            margin-top: 30px;
        }
        .header p {
            font-size: 14px;
        }
    </style>
</head>
<body>
<div class="header">
    <div class="am-g">
        <h1>登录页面</h1>

    </div>
    <hr />
</div>
<div class="am-g">
    <div class="am-u-lg-6 am-u-md-8 am-u-sm-centered">
        <h3>登录</h3>
        <hr>

        <br>
        <br>

        <form  class="am-form">
            <label for="userId">账号:</label>
            <input type="text" name="" id="userId" value="">
            <br>
            <label for="password">密码:</label>
            <input type="password" name="" id="password" value="">
            <br>

            <br />
            <div class="am-cf">
                <input type="button" name="" id="login" value="登 录" class="am-btn am-btn-primary am-btn-sm am-fl">
                <#--<input type="submit" name="" value="忘记密码 ^_^? " class="am-btn am-btn-default am-btn-sm am-fr">-->
            </div>
        </form>
        <hr>
        <p>© 2014 AllMobilize, Inc. Licensed under MIT license.</p>
    </div>
</div>

<script>
    $("#login").on('click',function () {
        $.ajax({
            url: '/Webtextile/login',
            type: 'post',
            data: {
                userId: $("#userId").val(),
                password: $("#password").val()
            },
            success: function (dt) {
                if(dt.code === 200){
                    location.href = "/Webtextile/index";
                }
            }
        })
    })
</script>

</body>
</html>