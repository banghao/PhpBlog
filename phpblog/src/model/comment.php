<?php

class Comment
{
    private $id;
    private $user;
    private $content;
    private $article_id;

    public function __get($name)
    {
        return $this->$name;
    }

    public function __set($name, $value)
    {
        $this->$name = $value;
    }
}