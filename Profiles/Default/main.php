<?php
return array (
  'site' =>
  array (
    'title' => 'Мой первый сайт',
    'name' => 'слоган',
    'copyright' => 'Все права защищены',
    'publish_year' => '2017',
    'meta' => 
    array (
      'name' => 
      array (
        'keywords' => 'сайт, мой первый сайт, тест',
        'author' => 'Автор',
        'description' => 'Описание сайта',
        'viewport' => 'width=device-width, initial-scale=1.0',
      ),
    ),
  ),
  'db' =>
  array (
    'host' => 'localhost',
    'user' => 'username',
    'password' => 'simplepassword',
    'dbname' => 'database',
  ),
  'twig' =>
        array (
            'template_dir' => '/path/to/Twig/Templates',
            'cache_dir' => '/path/to/Twig/Cache',
            'default_date_format' => 'd.m.Y H:i',
        ),
  'settings' =>
        array (
            'template_engine' => 'Twig',
        ),

  'posts' =>
        array (
            'count_on_start_page' => 3,
        ),

);