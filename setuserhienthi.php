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
date_default_timezone_set('Asia/Ho_Chi_Minh');

$data = new class_mysql();
$data->config();
$data->access();

$curl = curl_init();

curl_setopt_array(
    $curl,
    array(
        CURLOPT_URL => 'https://fmxuong22.ovn.vn/api/api_user.php',
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_ENCODING => '',
        CURLOPT_MAXREDIRS => 10,
        CURLOPT_TIMEOUT => 0,
        CURLOPT_FOLLOWLOCATION => true,
        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        CURLOPT_CUSTOMREQUEST => 'GET',
        CURLOPT_POSTFIELDS => '{
    "id_nv": "",
    "ma_nv": "",
    "id_ch": ""
}',
        CURLOPT_HTTPHEADER => array(
            'Author: 146f06c0298a45cc0a65d7547085d94e6e35ba64df6757aa4ee52620c2fba080',
            'Content-Type: application/json'
        ),
    )
);

$response = curl_exec($curl);

curl_close($curl);
// echo $response;
$datafill = json_decode($response, true);
$count = count($datafill['data']);
// echo $count;
$data1 = $_POST['DATA'];
$tmp = explode('*@!', $data1);
$ht = $tmp[0];
$chuoi = "<option value=''>Chọn nhân viên</option>";
for ($i = 0; $i < $count; $i++) {
    $id_nv = $datafill['data'][$i]['id_nv'];
    $ma_nv = $datafill['data'][$i]['ma_nv'];
    $ten = $datafill['data'][$i]['ten'];
    $id_cuahang = $datafill['data'][$i]['id_cuahang'];
    if ($ht == $id_cuahang) {
        $name = $ten . " - " . $ma_nv;
        $select = "";
        if (trim($select_i) == trim($id_nv)) {
            $select = "selected";
        }
        if (trim($idcall) != trim($id_nv) && $action == false) {
            $chuoi .= "<option value='$id_nv' $select>$name</option> ";
        } else {
            $chuoi .= "<optgroup label='$name'></optgroup>";
            $action = true;
        }
        $action = false;
    }
}

echo $chuoi;


?>