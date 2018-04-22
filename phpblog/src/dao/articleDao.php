<?php
header("Content-type: text/html; charset=utf-8");
include "../connect/connect.php";
include '../model/article.php';

function get_article_list($page)
{
    $link = connect();
    $sql = "select * from tb_article order by id desc limit " . (($page - 1) * 10) . ',10';
    $result = mysqli_query($link, $sql);
    $list = [];
    $i = 0;
    while ($r = mysqli_fetch_assoc($result)) {
        $list[$i] = array($r['id'], $r['name'], $r['author'], $r['date'], $r['num']);
        $i++;
    }
    close($link);
    return $list;
}

function get_max_page()
{
    $link = connect();
    $sql = "select * from tb_article";
    $result = mysqli_query($link, $sql);
    close($link);
    return (int)((mysqli_num_rows($result) - 1) / 10) + 1;
}

function add_article($article)
{
    $link = connect();
    $sql = "insert tb_article (name,author,date,content) values ('" . $article->name . "','" . $article->author . "','" . $article->date . "','" . $article->content . "')";
    if (mysqli_query($link, $sql)) {
        return true;
    }
    close($link);
    return false;
}

function get_article_detail($id)
{
    $link = connect();
    $sql = "select * from tb_article where id=".$id;
    $result = mysqli_query($link, $sql);
    $article = array();
    $r = mysqli_fetch_assoc($result);
    $article[0] = $r['id'];
    $article[1] = $r['name'];
    $article[2] = $r['author'];
    $article[3] = $r['content'];
    close($link);
    return $article;
}