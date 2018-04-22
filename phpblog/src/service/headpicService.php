<?php
header("Content-type: text/html; charset=utf-8");
include '../connect/connect.php';
$method = $_GET['method'];
switch ($method) {
    case 1:
        head_pic_add();
        break;
}

function head_pic_add()
{
    $dir = '../../img/head_pic/';
    if (isset($_POST['dosub'])) {
        if (isset($_FILES['userfile'])) {
            $file = $_FILES['userfile'];
            if ($file['error'] === 0) {
                if (is_uploaded_file($file['tmp_name'])) {
                    $fileMines = array('image/jpeg', 'image/pjpeg', 'image/png');
                    if (!in_array($file['type'], $fileMines)) {
                        echo '<script language=javascript>alert(\'文件类型不正确！\');history.go(-1);</script>';
                        die();
                    }
                    $pos = strrpos($file['name'], '.', 0);
                    $t = substr($file['name'], $pos);
                    session_start();
                    $user = $_SESSION['blog_user'];
                    $new_filename = $_SESSION['blog_user'] . $t;
                    $new_filename = iconv('utf-8', 'gbk', $new_filename);
                    move_uploaded_file($file['tmp_name'], $dir . $new_filename);
                    $link = connect();
                    $_SESSION['blog_head_pic'] =
                    $sql = 'update tb_user set head_pic=\''.'./img/head_pic/'.$new_filename.'\' where user='.$user;
                    if(mysqli_query($link, $sql)){
                        echo '<script language=javascript>window.location.href=\'../../info.php\'</script>';
                    }
                    mysqli_close($link);
                }
            } elseif ($file['error'] == 2) {
                echo '<script language=javascript>alert(\'文件太大！\');history.go(-1);</script>';
            } elseif ($file['error'] == 4) {
                echo '<script language=javascript>alert(\'上传的文件不能为空！\');history.go(-1);</script>';
            } else {
                echo '<script language=javascript>alert(\'上传失败！\');history.go(-1);</script>';
            }
        } else {
            echo '<script language=javascript>alert(\'文件不能为空！\');history.go(-1);</script>';
        }
    } else {
        echo '<script language=javascript>alert(\'请提交文件！\');history.go(-1);</script>';
    }
}