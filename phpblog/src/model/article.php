<?php

class Article{
    private $id;
    private $name;
    private $author;
    private $date;
    private $num;
    private $content;

    public function __get($name)
    {
        return $this->$name;
    }

    public function __set($name, $value)
    {
        $this->$name = $value;
    }
}