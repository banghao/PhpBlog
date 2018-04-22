<html>
<head id="header">
    <title>陈邦豪的个人博客</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="css/style.css">
    <?php
    session_start();
    if (!isset($_SESSION['blog_user'])) {
        echo '<script language=javascript>window.location.href=\'./login.php\'</script>';
    }
    ?>
    <ul>
        <a href="./src/service/articleService.php?method=1&page=1">文章</a>
        <a href="./info.php">个人帅照上传</a>
        <a href="api.php">动车到站查询</a>
    </ul>
</head>
<body id="info">

<div class="container">
    <div class="content">
        <?php
        include './src/connect/connect.php';
        $id = $_SESSION['blog_user'];
        $email = $_SESSION['user_email'];
        $phone = $_SESSION['user_phone'];
        ?>
        <div class="content">
            <?php
            $user = $_SESSION['blog_user'];
            $link = connect();
            $sql = "select * from tb_user where user=" . $user;
            $result = mysqli_query($link, $sql);
            $url = '';
            if ($r = mysqli_fetch_assoc($result)) {
                $url = $r['head_pic'];
            }
            close($link);
                echo "<img src=".$url.">";
            ?>
            <form enctype="multipart/form-data" action="./src/service/headpicService.php?method=1" method="post" style="align-content: center">
                <input type="hidden" name="MAX_FILE_SIZE" value="1000000">
                <input type="file" name="userfile" value="更换头像">
                <input type="submit" name="dosub" value="确定" class="pic_sure">
            </form>
            <table>
                <caption>个人信息</caption>
                <tr>
                    <td>用户名：</td>
                    <td><input type="text" name="account" value="<?php echo $id ?>" disabled>
                    </td>
                </tr>
                <tr>
                    <td>邮箱：</td>
                    <td><input type="text" name="email" value="<?php echo $email ?>" disabled>
                    </td>
                </tr>
                <tr>
                    <td>手机号：</td>
                    <td><input type="text" name="phone" value="<?php echo $phone ?>" disabled>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</div>
<div id="copyright">
    <p>Copyright © 2018 By cbh. All rights reserved. </p>
</div>
</body>
</html>