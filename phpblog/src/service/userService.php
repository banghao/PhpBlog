<?php
header("Content-type: text/html; charset=utf-8");
include '../dao/userDao.php';
include '../model/user.php';


$method = $_GET['method'];

switch ($method) {
    case 1:
        user_login();
        break;
    case 2:
        user_register();
        break;


}

function user_login()
{
    $account = $_POST['user'];
    $pwd = $_POST['password'];
    $yzm=$_POST["captcha"];
    if (empty($account)) {
        echo '<script language=javascript>alert(\'用户名不能为空！\');history.go(-1);</script>';
        die();
    } else if (empty($pwd)) {
        echo '<script language=javascript>alert(\'密码不能为空！\');history.go(-1);</script>';
        die();
    }
    else if (empty($yzm)) {
        echo '<script language=javascript>alert(\'请输入验证码！\');history.go(-1);</script>';
        die();
    }
    session_start();
    $imgeText=$_SESSION['imgeText'];
    if($yzm==$imgeText) {

        $user = new User();
        $user->account = $account;
        $user->pwd = $pwd;
        $success = login($user);
        if ($success == true) {
            $_SESSION['blog_user'] = $account;
            echo '<script language=javascript>window.location.href=\'../service/articleService.php?method=1&page=1\'</script>';
            die();
        } else {
            echo '<script language=javascript>alert(\'用户不存在或密码错误！\');history.go(-1);</script>';
            die();
        }
    }
    else{
        echo  '<script language=javascript>alert(\'验证码错误！\');history.go(-1);</script>';
    }
}



function user_register()
{
    $account = $_POST['user'];
    $password = $_POST['password'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    if (empty($account)) {
        echo '<script language=javascript>alert(\'用户名不能为空！\');history.go(-1);</script>';
        die();
    } else if (empty($password)) {
        echo '<script language=javascript>alert(\'密码不能为空！\');history.go(-1);</script>';
        die();
    } else if (empty($email)) {
        echo '<script language=javascript>alert(\'邮箱不能为空！\');history.go(-1);</script>';
        die();
    } else if (empty($phone)) {
        echo '<script language=javascript>alert(\'手机号不能为空！\');history.go(-1);</script>';
        die();
    }
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        echo '<script language=javascript>alert(\'邮箱格式不正确！\');history.go(-1);</script>';
        die();
    }
    if (!preg_match("/^1[34578]\d{9}$/", $phone)) {
        echo '<script language=javascript>alert(\'手机号格式不正确！\');history.go(-1);</script>';
        die();
    }
    if (!is_numeric($account)) {
        echo '<script language=javascript>alert(\'用户名必须为数字！\');history.go(-1);</script>';
        die();
    }
    $user = new User();
    $user->account = $account;
    $user->pwd = $password;
    $user->email = $email;
    $user->phone = $phone;
    $user->head_pic = './img/test.jpg';
    $p = register($user);
    if($p ==true){
        echo '<script language=javascript>alert(\'注册成功！\');window.location.href=\'../../login.php\'</script>';
    }
}
