 <html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>cbh个人博客登录</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
    <!--[if IE]>
    <script src="http://libs.baidu.com/html5shiv/3.7/html5shiv.min.js"></script>
    <![endif]-->
</head>
<body id="login_register">
<form action="./src/service/userService.php?method=2" method="post">
    <div class="jq22-container" style="padding-top:100px">
        <div class="login-wrap">
            <div class="login-html">
                <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign Up</label>
                <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Welcome </label>
                <div class="login-form">
                    <div class="sign-in-htm">
                        <div class="group">
                            <label for="user" class="label">用户名：</label>
                            <input id="user" name="user" type="text" class="input">
                        </div>
                        <div class="group">
                            <label for="pass" class="label">密码：</label>
                            <input id="pass"  name="password"　type="password" class="input" data-type="password">
                        </div>
                        <div class="group">
                            <label for="pass" class="label">手机号：</label>
                            <input id="pass" type="text"  class="input"  name="phone">
                        </div>

                        <div class="group">
                            <label for="pass" class="label">邮箱：</label>
                            <input id="pass" type="text"  class="input"  name="email">
                        </div>

                        <div class="group">
                            <input type="submit" class="button" value="注册">
                        </div>
                        <div class="hr"></div>

                    </div>

                </div>
            </div>
        </div>
    </div>
</form>
</body>
</html>