

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

<form action="src/service/userService.php?method=1" method="post">
    <div class="jq22-container" style="padding-top:100px">
        <div class="login-wrap">
            <div class="login-html">
                <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label>
                <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Welcome </label>
                <div class="login-form">
                    <div class="sign-in-htm">
                        <div class="group">
                            <label for="user" class="label">用户名：</label>
                            <input id="user" name="user" type="text" class="input" placeholder="请输入您的用户名！">
                        </div>
                        <div class="group">
                            <label for="pass" class="label">密码：</label>
                            <input id="pass"  name="password" type="password" class="input" data-type="password"  placeholder="请输入您的密码！">
                        </div>


                        <div class="group">
                            <label for="pass" class="label">验证码</label>
                            <input id="user"  type="text"  class="input" name="captcha"  placeholder="区分大小写！">
                            <img src="src/service/yanzhengma.php" style="width: 120px;margin-left: 28px" >
                        </div>

                        <div class="group">
                            <input type="submit" class="button" value="登录">
                        </div>


                        <div class="hr"></div>
                        <div class="foot-lnk">
                            <a href="register.php">注册</a>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</form>
</body>
</html>