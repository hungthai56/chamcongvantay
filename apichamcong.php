<?php

$json = file_get_contents('php://input'); //nhận POST data body

$json = json_decode($json, true);

$ip   = $_SERVER["REMOTE_ADDR"] ;

// // LƯU THÔNG TIN LẠI
$myfile = file_get_contents("log.json");
$jsons = 'R '.json_encode($json)."==||==" .$ip."\n";
if ($myfile) {
  $datas = $myfile . $jsons;
} else {
  $datas = $jsons;
}
$luufile = file_put_contents('log.json', $datas);

