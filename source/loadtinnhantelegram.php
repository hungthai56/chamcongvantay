<?php
if (session_status() == PHP_SESSION_NONE) session_start();
if (!defined("IN_SITE")) {
	die('Hacking attempt!');
}
?>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<?php

$data->closedata();
?>