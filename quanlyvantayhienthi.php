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
    $sql = "SELECT cong, link FROM maychamcong";
    $result = $data->query($sql);
    while ($re = $data->fetch_array($result)) {
        $curl = curl_init();
        curl_setopt_array(
            $curl,
            array(
                CURLOPT_URL => 'https://mc7.ovn.vn:9090/api?type=get&from_=' . $re['link'] . '&port=' . $re['cong'] . '&isall=1&uid=&user_id=',
                CURLOPT_RETURNTRANSFER => true,
                CURLOPT_ENCODING => '',
                CURLOPT_MAXREDIRS => 10,
                CURLOPT_TIMEOUT => 0,
                CURLOPT_FOLLOWLOCATION => true,
                CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                CURLOPT_CUSTOMREQUEST => 'POST',
            )
        );

        $response = curl_exec($curl);
        curl_close($curl);
        // return;
        $bien = json_decode($response, true);

        $numbien = count($bien['data']);
        for ($i = 0; $i < $numbien; $i++) {
            // var_dump($bien['data'][$i]['template']);
            $uid = $bien['data'][$i]['template']['uid'];
            $size = $bien['data'][$i]['template']['size'];
            echo $size;

            $fid = $bien['data'][$i]['template']['fid'];
            $template = $bien['data'][$i]['template']['template'];

            $sql = "UPDATE nhanvien_backup SET template='$template', size='$size' where uid ='$uid'";
            $data->query($sql);
        }

        echo "<h4>Sao lưu thành công, F5 để load lại trang</h4>";
    }
}

if ($check == 2) {
    $sql_where = "uid = " . $uidnv;
    $sql = "SELECT uid, user_id, tencd, template, IDnhanvien, IDcuahang, password, idcc, linkcc, size, Ten, MaNV FROM nhanvien_backup where 1 = 1 and " . $sql_where;
    $result = $data->query($sql);
    while ($re = $data->fetch_array($result)) {
        $ip = $idmay;
        $uid = $re['uid'];
        $size = $re['size'];
        $user_id = $re['user_id'];
        $tencd = $re['tencd'];
        $template = $re['template'];
        $idnhanvien = $re['IDnhanvien'];
        $idcuahang = $re['IDcuahang'];
        $password = $re['password'];
        $Ten = $re['Ten'];
        $MaNV = $re['MaNV'];
        $idcc = $re['idcc'];
        $linkcc = $re['linkcc'];
        $ngaytao = date("Y-m-d");
        $array = ["ips" => [["ip" => $cong, "port" => $ip]], "users" => [["uid" => $uid, "user_id" => $user_id, "name" => $tencd, "template" => ["size" => $size, "uid" => $uid, "fid" => 0, "valid" => 1, "template" => $template]]]];
        $datais = json_encode($array, JSON_HEX_TAG | JSON_HEX_APOS | JSON_HEX_QUOT | JSON_HEX_AMP | JSON_UNESCAPED_UNICODE);
        echo $datais;
        // return;
        $curl = curl_init();
        curl_setopt_array(
            $curl,
            array(
                CURLOPT_URL => 'https://mc7.ovn.vn:9090/api?type=set',
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
        // echo $response;
        $sql = "INSERT INTO nhanvien_backup set linkcc='$cong', IDnhanvien='$idnhanvien', uid='$uid', user_id='$user_id', tencd='$tencd', role='1', password='$password', idcc='$cuahangden', IDcuahang='$macuahang',  template='$template',  Ten='$Ten',  MaNV='$MaNV', ngaytao = '$ngaytao', tinhtrang = 1";
        echo $sql;
        return;
        $update = $data->query($sql);

    }
}

if ($check == 3) {
    $curl = curl_init();
    curl_setopt_array(
        $curl,
        array(
            CURLOPT_URL => 'https://mc7.ovn.vn:9090/api?type=get&from_=' . $idmay . '&port=' . $cong . '&isall=0&uid=' . $uidnv . '&user_id=' . $uidnv . '&fid=1',
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 0,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'POST',
        )
    );
    $response = curl_exec($curl);
    curl_close($curl);
    // var_dump($respons);
    $bien = json_decode($response, true);
    // var_dump($bien);
    $uid = $bien['data'][0]['template']['uid'];
    $size = $bien['data'][0]['template']['size'];
    $fid = $bien['data'][0]['template']['fid'];
    $template = $bien['data'][0]['template']['template'];

    $sql = "UPDATE nhanvien_backup SET template='$template' where uid ='$uid'";
    $data->query($sql);
    echo "<h4>Sao lưu thành công, F5 để load lại trang</h4>";
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

if ($check == 6) {
    // echo "<h3>Đã xoá dữ liệu nhân viên thành công!</h3>" . date('d-m-Y H:i:s'); 
    $sql = "SELECT a.ngaytao, a.ID, a.linkcc, a.idcc, a.uid, b.datelog from nhanvien_backup a
    LEFT JOIN datalog b ON b.uid = a.uid where tinhtrang = 1";
    $result = $data->query($sql);
    while ($re = $data->fetch_array($result)) {
        $date = date_create($re['datelog']);
        $datelast = date_format($date, "Y-m-d");
        // echo $datelast;
        $first_date = strtotime($datelast);
        // echo $first_date."chuoia";

        // echo date('Y-m-d');
        $second_date = strtotime(date('Y-m-d'));
        // echo $second_date."chuoib";
        $datediff = abs($first_date - $second_date);
        // echo $datediff;
        $ngaychon = floor($datediff / (60 * 60 * 24));
        // echo $ngaychon;
        if ($ngaychon >= 60) {
            $sql = "UPDATE nhanvien_backup set tinhtrang = 0 where ID=" . $re['ID'];
            $update = $data->query($sql);

            // $linkcc = $re['linkcc'];
            // $idcc = $re['idcc'];
            // $ID = $re['uid'];
            // $data1 = '{ "from":{"ip":"' . $linkcc . '", "port": "' . $idcc . '"},"isall":false,"users":{ "uid": ' . $ID . ', "user_id": ' . $ID . ' }}';
            // $curl = curl_init();
            // curl_setopt_array(
            //     $curl,
            //     array(
            //         CURLOPT_URL => 'https://mc7.ovn.vn:9090/api?type=deleteuser',
            //         CURLOPT_RETURNTRANSFER => true,
            //         CURLOPT_ENCODING => '',
            //         CURLOPT_MAXREDIRS => 10,
            //         CURLOPT_TIMEOUT => 0,
            //         CURLOPT_FOLLOWLOCATION => true,
            //         CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            //         CURLOPT_CUSTOMREQUEST => 'POST',
            //         CURLOPT_POSTFIELDS => $data1,
            //         CURLOPT_HTTPHEADER => array(
            //             'Content-Type: application/json'
            //         ),
            //     )
            // );

            // $response = curl_exec($curl);

            // curl_close($curl);
        }
    }
}

if ($check == 7) {
    $sql = "SELECT * from nhanvien_backup a
    INNER JOIN maychamcong b
    ON a.idcc = b.ID
    where template is NULL";
    $result = $data->query($sql);
    while ($re = $data->fetch_array($result)) {
        $curl = curl_init();
        curl_setopt_array(
            $curl,
            array(
                CURLOPT_URL => 'https://mc7.ovn.vn:9090/api?type=get&from_=' . $re['linkcc'] . '&port=' . $re['cong'] . '&isall=0&uid=' . $re['uid'] . '&user_id=' . $re['user_id'] . '&fid=1',
                CURLOPT_RETURNTRANSFER => true,
                CURLOPT_ENCODING => '',
                CURLOPT_MAXREDIRS => 10,
                CURLOPT_TIMEOUT => 0,
                CURLOPT_FOLLOWLOCATION => true,
                CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                CURLOPT_CUSTOMREQUEST => 'POST',
            )
        );
        $response = curl_exec($curl);
        curl_close($curl);
        // var_dump($respons);
        $bien = json_decode($response, true);
        // var_dump($bien);
        $uid = $bien['data'][0]['template']['uid'];
        $size = $bien['data'][0]['template']['size'];
        $fid = $bien['data'][0]['template']['fid'];
        $template = $bien['data'][0]['template']['template'];

        $sql = "UPDATE nhanvien_backup SET template='$template' where uid ='$uid'";
        $data->query($sql);
    }

}




?>