<?php
function connect()
{
    $link = mysqli_connect("localhost", "root", "");
    mysqli_set_charset($link, "utf8");
    if (!$link) {
        echo mysqli_connect_error();
        die();
    }
    mysqli_select_db($link, "cbh_blog");
    return $link;
}

function close($link)
{
    mysqli_close($link);
}