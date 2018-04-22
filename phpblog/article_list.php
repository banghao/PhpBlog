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
<body id="article_list">
<p class="title">陈邦豪的个人博客</p>

<div class="container">
    <div class="content">

        <table class="article_list_table">
            <tbody>
            <tr class="article_th">
                <th>文章名</th>
                <th>作者</th>
                <th>发表日期</th>
                <th>评论数</th>
            </tr>
            <?php
            $list = $_SESSION['article_list'];
            foreach ($list as $row) {
                ?>
                <tr>
                    <td>
                        <a href="./src/service/articleService.php?method=4&id=<?php echo $row[0] ?>"><?php echo $row[1] ?></a>
                    </td>
                    <td><?php echo $row[2] ?></td>
                    <td><?php echo $row[3] ?></td>
                    <td><?php echo $row[4] ?></td>
                </tr>
                <?php
            }
            ?>
            </tbody>
        </table>
        <div class="page_num">
            <?php
            $curr_page = $_SESSION['article_page'];
            $max_page = $_SESSION['article_max_page'];
            ?>
            <p>当前第[<?php echo $curr_page; ?>/<?php echo $max_page; ?>]页</p>
            <?php
            if ($curr_page != 1) {
                echo "<p><a href=\"./src/service/articleService.php?method=1&page=1\">第一页</a></p>";
                echo "<p><a href=\"./src/service/articleService.php?method=1&page=" . ($curr_page - 1) . "\">上一页</a></p>";
            }
            if ($curr_page != $max_page) {
                echo "<p><a href=\"./src/service/articleService.php?method=1&page=" . ($curr_page + 1) . "\">下一页</a></p>";
                echo "<p><a href=\"./src/service/articleService.php?method=1&page=" . $max_page . "\">最后一页</a></p>";
            }
            ?>
        </div>
        <a href="./article_add.php" class="add" style="align-content: center">添加文章</a>
    </div>
</div>
</body>
</html>