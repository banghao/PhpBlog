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
<body id="article_detail">

<div class="container">
    <div class="content">
        <?php
        $article = $_SESSION['article_detail'];
        ?>
        <form action="./src/service/commentService.php?method=1&id=<?php echo $article[0] ?>" method="post">
            <table>
                <caption><?php echo $article[1] ?></caption>
                <tr>
                    <td>作者：<?php echo $article[2] ?></td>
                </tr>

                <tr>
                    <td class="pinlun">评论：</td>
                </tr>
                <tr>
                    <td><textarea name="comment" id="input_content"></textarea></td>
                </tr>
                <tr>
                    <td><input type="submit" value="抢沙发"></td>
                </tr>
            </table>
        </form>
        <table class="comment">
            <caption style="text-align: left">沙发</caption>
            <?php
            $comment_list = $_SESSION['comment_list'];
            if (sizeof($comment_list) == 0) {
                echo '<tr><td><p>暂时还没有评论哦～～</p></td></tr>';
            }
            foreach ($comment_list as $row) {
                ?>
                <tr>
                    <td>
                        <p class="author"><?php echo $row[1] ?>:</p>
                        <p><?php echo $row[0] ?></p>
                    </td>
                </tr>
                <?php
            }
            ?>
        </table>
    </div>
</div>
<div id="copyright">
    <p>Copyright © 2018 By cbh. All rights reserved. </p>
</div>
</body>
</html>