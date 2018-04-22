<?php
include('../connect/connect.php');

function login($user)
{
    $link = connect();
    $sql = "select * from tb_user where user=" . $user->account;
    $result = mysqli_query($link, $sql);
    $r = mysqli_fetch_assoc($result);
    if ($user->pwd == $r["pwd"]) {
        $_SESSION['user_email'] = $r["email"];
        $_SESSION['user_phone'] = $r["phone"];
        $_SESSION['user_head_pic'] = $r["head_pic"];
        return true;
    }
    close($link);
    return false;
}

function register($user)
{
    if(isExist($user)){
        echo '<script language=javascript>alert(\'该用户已存在！\');history.go(-1);</script>';
        die();
    }
    $link = connect();
    $sql = 'insert tb_user (user,pwd,email,phone,head_pic) values('.$user->account.',\''.$user->pwd.'\',\''.$user->email.'\',\''.$user->phone.'\',\''.$user->head_pic.'\')';
    if(mysqli_query($link, $sql)){
        return true;
    }
    mysqli_close($link);
    return false;
}
function isExist($user)
{
    $link = connect();
    $sql = "select * from tb_user where user=" . $user->account;
    $result = mysqli_query($link, $sql);
    if (mysqli_num_rows($result)==1) {
        return true;
   }
    close($link);
    return false;
}
