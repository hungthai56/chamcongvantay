<?php
header("Access-Control-Allow-Origin: *");
header('Access-Control-Allow-Methods: GET, POST, OPTIONS');
header("Access-Control-Allow-Headers: Content-Type, Authorization");
header('Content-Type: text/html; charset=utf-8');
date_default_timezone_set('Asia/Ho_Chi_Minh');

$json = file_get_contents('php://input');
global $conn, $conn_data, $access_token;
$server = "localhost";
$username = "vantay_data";
$password = "mQO9ATgqT";
$dbname = "vantay_data";

$conn = new mysqli($server, $username, $password, $dbname) or die('{error:"bad_request"}');
$conn->set_charset("utf8");
// var_dump($conn);
// Hàm đóng kết nối
if (!$conn) {
  die("Kết nối thất bại: " . mysqli_connect_error());
}else{
  echo "Kết nối thành công";
}

$json = json_decode($json, true);
var_dump(count($json));
for ($i=0; $i < count($json); $i++) { 
  global $conn;
  $ip = $json[$i]['ip'];
  $port = $json[$i]['port'];
  $uid = $json[$i]['user_id'];

  $t = $json[$i]['timestamp'];
  $date = (date("Y-m-d H:i:s", $t));

  $user_id = $json[$i]['user_id'];
  $status = $json[$i]['status'];
  $punch = $json[$i]['punch'];
  $sql = "INSERT INTO datalog SET uid='$uid', mamay='$ip', port='$port', datelog='$date', user_id='$user_id', status='$status', punch='$punch'";
  echo $sql;
  $result = mysqli_query($conn, $sql);
}

// // LƯU THÔNG TIN LẠI
echo "đã tải lên";
file_put_contents('chamcongvaytay.json', $json);

