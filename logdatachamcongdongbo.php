<?php
header("Access-Control-Allow-Origin: *");
header('Access-Control-Allow-Methods: GET, POST, OPTIONS');
header("Access-Control-Allow-Headers: Content-Type, Authorization");
header('Content-Type: text/html; charset=utf-8');
$root_path = getcwd() . "/";
include($root_path . "biensession.php");
include($root_path . "includes/config.php");
include($root_path . "includes/removeUnicode.php");
include($root_path . "includes/class.paging.php");
include($root_path . "includes/class.mysql.php");
include($root_path . "includes/function.php");

$data = new class_mysql();
$data->config();
$data->access();

$data1 = $_POST['LOAD'];
$tmp = explode('*@!', $data1);
$idload = $tmp[0];
if ($idload == 1) {

    //xoá toàn bộ dữ liệu trước khi insert
    $sql = "TRUNCATE TABLE datalog";
    $data->query($sql);

    // kết nối máy chấm công bằng zk
    require './zklibrary.php';
    $ip_addresses = ['192.168.1.201'];
    foreach ($ip_addresses as $key => $value) {
        $zk = new ZKLibrary($value, 4370);
        $zk->connect();
        $zk->disableDevice();
        $attendace = $zk->getAttendance();
    }

    // chạy vòng lặp để insert dữ liệu
    foreach ($attendace as $key => $at) {
        $sql = "INSERT INTO datalog SET uid='$at[0]', datelog='$at[3]', timelog='$at[4]', user_id='$at[1]', status='$at[2]', mamay='$at[5]'";
        $data->query($sql);
    }
}


?>