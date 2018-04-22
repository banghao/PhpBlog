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
<body id="article_add">

<div class="container">
    <div class="content">
        <form action="./src/service/articleService.php?method=3" method="post">
            <table>
                <caption>发表文章</caption>
                <tr>
                    <td class="header">标题：</td>
                    <td class="input"><input type="text" name="title"></td>
                </tr>
                <tr>
                    <td class="header">正文：</td>
                    <td class="input"><textarea name="content"></textarea></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="发表" id="submit"></td>
                </tr>
            </table>
        </form>
    </div>
</div>
<div id="copyright">
    <p>Copyright © 2018 By cbh. All rights reserved. </p>
</div>
</body>
</html>