<?php
header("Content-type: text/html; charset=utf-8");
include '../dao/articleDao.php';
include '../dao/commentDao.php';

$method = $_GET['method'];
switch ($method) {
    case 1:
        article_list();
        break;
    case 2:
        max_page();
        break;
    case 3:
        article_add();
        break;
    case 4:
        article_detail();
        break;
}

function article_list()
{
    $page = $_GET['page'];
    $list = get_article_list($page);
    session_start();
    $_SESSION['article_max_page'] = max_page();
    $_SESSION['article_page'] = $page;
    $_SESSION['article_list'] = $list;
    echo '<script language=javascript>window.location.href=\'../../article_list.php\'</script>';
}

function max_page(){
    return get_max_page();
}

function article_add(){
    session_start();
    $u_id = $_SESSION['blog_user'];
    $title = $_POST['title'];
    $content = $_POST['content'];
    if(empty($title)){
        echo '<script language=javascript>alert(\'标题不能为空！\');history.go(-1);</script>';
        die();
    }else if(empty($content)){
        echo '<script language=javascript>alert(\'正文不能为空！\');history.go(-1);</script>';
        die();
    }
    $article = new Article();
    $article->author = $u_id;
    $article->name = $title;
    $article->content = $content;
    $article->date = date('y-m-d H:i:s',time());
    if(add_article($article)){
        echo '<script language=javascript>alert(\'发表成功！\');window.location.href=\'./articleService.php?method=1&page=1\';</script>';
        die();
    }else{
        echo '<script language=javascript>alert(\'发表失败！\');history.go(-1);</script>';
        die();
    }
}

function article_detail(){
    $id = $_GET['id'];
    session_start();
    $_SESSION['article_detail'] = get_article_detail($id);
    $_SESSION['comment_list'] = get_comment_list($id);
    echo '<script language=javascript>window.location.href=\'../../article_detail.php\';</script>';
}