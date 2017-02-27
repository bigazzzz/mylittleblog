<!DOCTYPE html>
<html lang="ru">
<head>
<?php foreach ($site->meta as $attr=>$value) : ?>
<?php foreach ($value as $k=>$v) : ?>
	<meta <?php echo $attr;?>="<?php echo $k;?>" content="<?php echo $v;?>">
<?php endforeach; ?>
<?php endforeach; ?>
</head>
<body>