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
<body id="weather">

<div class="container">
    <div class="content">
        <form action="" method="post">
            起点站：<input type="text" name="start" value="">
            终点站：<input type="text" name="end" value="">
            时间：<input type="text" name="date" value="">
            <input type="submit" name="dosub" value="查询">
        </form>
        <?php
        if(isset($_POST['dosub'])) {
            $parms=[
                'start'=>$_POST['start'],
                'end'=>$_POST['end'],
                'date'=>$_POST['date'],
                'dtype'=>'',
                'key'=>'f596827c1cc0527539ab96a5429d6e45'
            ];
            $base_url = 'http://apis.juhe.cn/train/s2swithprice';
            $url=$base_url.'?'.http_build_query($parms);

            $ch = curl_init();
            curl_setopt($ch, CURLOPT_URL, $url);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
            curl_setopt($ch, CURLOPT_HEADER, 0);
            $output = curl_exec($ch);
            curl_close($ch);
            $res = json_decode($output);
            if ($res->error_code === 0) {
                echo '<table border="1">';
                foreach ($res->result->list as $r) {
                    echo '<tr>';
                    echo '<td>' . $r->train_no . '</td>';
                    echo '<td>' . $r->train_type . '</td>';
                    echo '<td>' . $r->start_station . '</td>';
                    echo '<td>' . $r->end_station . '</td>';
                    echo '<td>' . $r->start_time . '</td>';
                    echo '<td>' . $r->end_time . '</td>';
                    echo '<td>' . $r->run_time . '</td>';

                    echo '</tr>';
                }
                echo '</table>';
            }
        }
        ?>

</div>
</div>

</body>
</html>