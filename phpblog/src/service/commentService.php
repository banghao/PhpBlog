<?php
header("Content-type: text/html; charset=utf-8");
include '../dao/commentDao.php';
include "../connect/connect.php";

$method = $_GET['method'];
switch ($method) {
    case 1:
        comment_add();
        break;
}

function comment_add()
{
    $id = $_GET['id'];
    $comment = $_POST['comment'];
    if (empty($comment)) {
        echo '<script language=javascript>alert(\'内容不能为空！\');history.go(-1);</script>';
        die();
    }
    session_start();
    $user = $_SESSION['blog_user'];
    if (add_comment($id, $user, $comment) == true) {
        echo '<script language=javascript>window.location.href=\'./articleService.php?method=4&id=' . $id . '\'</script>';
    }
}