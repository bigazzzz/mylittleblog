<?php
return array (
  'site' =>
  array (
    'title' => 'Тестовый бложик1',
    'name' => 'ТЕСТ',
    'copyright' => 'biga',
    'publish_year' => '2016',
    'meta' => 
    array (
      'name' => 
      array (
        'keywords' => 'блог',
        'author' => 'biga',
        'description' => 'Описание сайта',
      ),
    ),
  ),
  'db' =>
  array (
    'host' => '127.0.0.1',
    'user' => 'blog',
    'password' => '12345677',
    'dbname' => 'blog',
  ),
  'twig' =>
        array (
            'template_dir' => '/var/www/blog/App/Views/Twig/default',
            'cache_dir' => '/var/www/blog/Cache/Twig',
        ),
  'dir' => '',
);