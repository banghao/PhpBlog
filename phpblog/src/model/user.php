<?php

class User
{
    private $account;
    private $pwd;
    private $email;
    private $phone;
    private $head_pic;

    public function __get($name)
    {
        return $this->$name;
    }

    public function __set($name, $value)
    {
        $this->$name = $value;
    }
}