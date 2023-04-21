<?php

$json = file_get_contents('php://input'); //nhận POST data body

$json = json_decode($json, true);

// // LƯU THÔNG TIN LẠI
$myfile = file_get_contents("log.json");
$jsons = json_encode($json)."==||==";
if ($myfile) {
  $datas = $myfile . $jsons;
} else {
  $datas = $jsons;
}
$luufile = file_put_contents('log.json', $datas);

