<?php
header("Content-type: text/html; charset=utf-8");
include '../model/comment.php';

function get_comment_list($id)
{
    $link = connect();
    $sql = "select * from tb_comment where article_id=".$id." order by id desc";
    $result = mysqli_query($link, $sql);
    $list = [];
    $i = 0;
    while ($r = mysqli_fetch_assoc($result)) {
        $list[$i] = array($r['user'], $r['content']);
        $i++;
    }
    close($link);
    return $list;
}

function add_comment($id,$user,$comment)
{
    $link = connect();
    $sql = "insert tb_comment (user,content,article_id) values('".$comment."','".$user."',".$id.")";
    if(mysqli_query($link, $sql)){
        return true;
    }
    close($link);
    return false;
}