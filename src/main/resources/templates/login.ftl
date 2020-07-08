<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Amaze UI Admin index Examples</title>
    <meta name="description" content="这是一个 index 页面">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="icon" type="image/png" href="/Webtextile/admin/assets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="/Webtextile/admin/assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <link rel="stylesheet" href="/Webtextile/admin/assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="/Webtextile/admin/assets/css/amazeui.datatables.min.css" />
    <link rel="stylesheet" href="/Webtextile/admin/assets/css/app.css">
    <script src="/Webtextile/admin/assets/js/jquery.min.js"></script>
</head>
<body data-type="login">
    <script src="/Webtextile/admin/assets/js/theme.js"></script>
    <div class="am-g tpl-g">
        <!-- 风格切换 -->
        <div class="tpl-skiner">
            <div class="tpl-skiner-toggle am-icon-cog">
            </div>
            <div class="tpl-skiner-content">
                <div class="tpl-skiner-content-title">
                    选择主题
                </div>
                <div class="tpl-skiner-content-bar">
                    <span class="skiner-color skiner-white" data-color="theme-white"></span>
                    <span class="skiner-color skiner-black" data-color="theme-black"></span>
                </div>
            </div>
        </div>
        <div class="tpl-login">
            <div class="tpl-login-content">
                <div class="tpl-login-logo">

                </div>



                <form class="am-form tpl-form-line-form">
                    <div class="am-form-group">
                        <input type="text" class="tpl-form-input" id="userId" placeholder="请输入账号">
                    </div>

                    <div class="am-form-group">
                        <input type="password" class="tpl-form-input" id="password" placeholder="请输入密码">
                    </div>


                    <div class="am-form-group">
                        <button type="button" id="login" class="am-btn am-btn-primary  am-btn-block tpl-btn-bg-color-success  tpl-login-btn">提交</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script src="/Webtextile/admin/assets/js/amazeui.min.js"></script>
    <script src="/Webtextile/admin/assets/js/app.js"></script>
    <script src="/Webtextile/layer/layer.js"></script>

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
                    console.log(dt);
                    if(dt.code === 200){
                        location.href = "/Webtextile/index";
                    }else {
                        layer.msg(dt.message,{icon: 5,time: 1000});
                    }
                }
            })
        })
    </script>
</body>
</html>