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

$data1 = $_POST['DATA'];
$tmp = explode('*@!', $data1);
// var_dump($tmp[2]);
$check = $tmp[0];
$uidnv = $tmp[1];
$idmay = $tmp[2];
$cong = $tmp[3];
$macuahang = $tmp[4];
$cuahangden = $tmp[5];

if ($check == 1) {
    $sql = "SELECT a.uid, a.idcc FROM nhanvien_backup a
    INNER JOIN maychamcong b
    ON b.ID = a.idcc
    where a.uid = " . $uidnv;
    $result = $data->query($sql);
    while ($re = $data->fetch_array($result)) {
        $sql_get = "SELECT link, cong FROM maychamcong where ID= " . $re['idcc'];
        $dongbo = getdong($sql_get);
        $datais = '{"from":{"ip": "' . $dongbo['link'] . '", "port": "' . $dongbo['cong'] . '"},"isall":false,"users":{"uid": ' . $re['uid'] . ',"user_id": ' . $re['uid'] . '}}';

        $curl = curl_init();

        curl_setopt_array(
            $curl,
            array(
                CURLOPT_URL => 'https://mc7.ovn.vn:9090/api?type=deleteuser',
                CURLOPT_RETURNTRANSFER => true,
                CURLOPT_ENCODING => '',
                CURLOPT_MAXREDIRS => 10,
                CURLOPT_TIMEOUT => 0,
                CURLOPT_FOLLOWLOCATION => true,
                CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                CURLOPT_CUSTOMREQUEST => 'POST',
                CURLOPT_POSTFIELDS => $datais,
                CURLOPT_HTTPHEADER => array(
                    'Content-Type: application/json'
                ),
            )
        );

        $response = curl_exec($curl);

        curl_close($curl);
        echo $response;

        $sql = "delete from nhanvien_backup  where uid = " . $re['uid'] . "";
        $update = $data->query($sql);
    }
}

if ($check == 4) {

    $datais = '{"ips":[{"ip": "' . $idmay . '", "port": ' . $uidnv . ', "idch": "62"}]}';
    echo $datais;
    // return;
    $curl = curl_init();

    curl_setopt_array(
        $curl,
        array(
            CURLOPT_URL => 'https://mc7.ovn.vn:9090/api?type=deleteatt',
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 0,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'POST',
            CURLOPT_POSTFIELDS => $datais,
            CURLOPT_HTTPHEADER => array(
                'Content-Type: application/json'
            ),
        )
    );

    $response = curl_exec($curl);

    curl_close($curl);
    echo "<h3>Đã xoá dữ liệu cấm công thành công!</h3>";
}

if ($check == 5) {

    $datais = '{"ips":[{"ip": "' . $idmay . '", "port": ' . $uidnv . ', "idch": "62"}]}';
    $curl = curl_init();

    curl_setopt_array(
        $curl,
        array(
            CURLOPT_URL => 'https://mc7.ovn.vn:9090/api?type=deleteall',
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 0,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'POST',
            CURLOPT_POSTFIELDS => $datais,
            CURLOPT_HTTPHEADER => array(
                'Content-Type: application/json'
            ),
        )
    );

    $response = curl_exec($curl);

    curl_close($curl);
    echo "<h3>Đã xoá dữ liệu nhân viên thành công!</h3>";
}

?>