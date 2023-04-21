<?php
header("Access-Control-Allow-Origin: *");
header('Access-Control-Allow-Methods: GET, POST, OPTIONS');
header("Access-Control-Allow-Headers: Content-Type, Authorization");
header('Content-Type: text/html; charset=utf-8');
date_default_timezone_set('Asia/Ho_Chi_Minh');

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
$json = file_get_contents('php://input'); //nhận POST data body

// // LƯU THÔNG TIN LẠI
$myfile = file_get_contents("log.json");
$jsons = $json . "==||==" . "\n";
if ($myfile) {
  $datas = $myfile . $jsons;
  echo "đã tải lên";
} else {
  $datas = $jsons;
  echo "đã tải lên";
}
$luufile = file_put_contents('log.json', $datas);


$jsonS = json_decode($json, true);

$arry = [];
$sqlfun = "SELECT a.ten, a.MaNV, c.Name FROM nhanvien a 
LEFT JOIN cuahang
  c ON c.ID = a.IDcuahang where a.uid = " . $jsonS['uid'];
$result = mysqli_query($conn, $sqlfun);
while ($r = $result->fetch_array()) {
  var_dump($r['ten']);
  // {"ip": "14.224.173.186", "port": "4370", "uid": 1, "user_id": "1", "timestamp": 1679537255.0, "status": 1, "punch": 0}
  array_push($arry, $r['ten'], $r['MaNV'], $r['Name'], $jsonS['ip'], $jsonS['port'], $jsonS['uid'], $jsonS['user_id'], $jsonS['timestamp'], $jsonS['status'], $jsonS['punch']);
}

$url = 'https://mc7.ovn.vn:8099/api?type=postchamcong';
$data = array("type" => "postchamcong", "data" => $arry);
$res = SendToSocket($url, $data);
// echo $res;
function SendToSocket($url, $data, $method = "POST")
{
  $curl = curl_init();
  curl_setopt_array(
    $curl,
    array(
      CURLOPT_URL => $url,
      CURLOPT_RETURNTRANSFER => true,
      CURLOPT_ENCODING => '',
      CURLOPT_MAXREDIRS => 10,
      CURLOPT_TIMEOUT => 0,
      CURLOPT_FOLLOWLOCATION => true,
      CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
      CURLOPT_CUSTOMREQUEST => $method,
      CURLOPT_POSTFIELDS => json_encode($data),
      CURLOPT_HTTPHEADER => array(
        'Content-Type: application/json',
        'Cookie: session=eyJyZWNlaXZlX2NvdW50IjoyfQ.ZBkoBA.IVE2KKMqoiuFXbdA0-2xN9czxi4'
      ),
    )
  );

  $response = curl_exec($curl);
  curl_close($curl);
  return $response;
}
$ip = $_SERVER["REMOTE_ADDR"];
if ($_SERVER['HTTPS'] != 'on') {
  // Chuyển hướng sang HTTPS
  $url = "https://" . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
  header("Location: $url", true, 301);

  // Cài đặt HSTS header
  header('Strict-Transport-Security: max-age=31536000; includeSubDomains');
  exit();
}
// echo json_encode($arrRes);

// $json = json_decode($json, true);
// global $conn;
// $ip = $json['ip'];
// $port = $json['port'];
// $uid = $json['uid'];

// // $t = ;
// $date = $json['timestamp'];
// $user_id = $json['user_id'];
// $status = $json['status'];
// $punch = $json['punch'];
// $sql = "INSERT INTO datalog SET uid='$uid', mamay='$ip', port='$port', datelog='$date', user_id='$user_id', status='$status', punch='$punch'";
// echo $sql;
// $result = mysqli_query($conn, $sql);



