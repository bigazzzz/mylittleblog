<?php
return array (
    'site' =>
        array (
            'title' => 'Тестовый бложик',
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
                            'viewport' => 'width=device-width, initial-scale=1.0',
                        ),
                ),
        ),
    'db' =>
        array (
            'host' => '127.0.0.1',
            'user' => 'root',
            'password' => '123456',
            'dbname' => 'blog',
        ),
    'twig' =>
        array (
            'template_dir' => '/var/www/blog/App/Views/Twig/default',
            'cache_dir' => '/var/www/blog/Cache/Twig',
        ),
);