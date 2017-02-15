<!DOCTYPE html>
<html lang="ru">
<head>
    <title><?php echo $title; ?></title>
    <meta charset="utf-8">
    <?php foreach ($meta as $name=>$content) :?>
    <meta name="<?php echo $name; ?>" content="<?php echo $content; ?>">
    <?php endforeach; ?>
</head>
<body>