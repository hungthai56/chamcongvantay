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
$ht = $tmp[0];
$idtim = $tmp[1];
$datadongbo = $tmp[2];
$linkdongbo = $tmp[3];
if ($ht == 1) {

    $sql_where_trun = " WHERE 1=1 ";
    if ($datadongbo == "") {
        $sql = "TRUNCATE TABLE datalog";
        $data->query($sql);
    } else {
        $sql_where_trun .= " and port = $datadongbo ";
        $sql = "DELETE FROM datalog " . $sql_where_trun;
        $data->query($sql);
    }

    $sql_where_like = " where 1=1 ";
    if ($datadongbo != "")
        $sql_where_like .= " and cong = $datadongbo and link = '$linkdongbo' ";
    // kết nối máy chấm công bằng zk
    $sql = "SELECT link, cong FROM maychamcong" . $sql_where_like;
    // echo $sql;
    // return;
    $result = $data->query($sql);
    while ($re = $data->fetch_array($result)) {
        $datalog = '{"ips":[{"ip": "' . $re["link"] . '", "port": "' . $re["cong"] . '"}]}';
        // echo $datalog;
        $curl = curl_init();

        curl_setopt_array(
            $curl,
            array(
                CURLOPT_URL => 'https://mc7.ovn.vn:9090/api?type=getatten',
                CURLOPT_RETURNTRANSFER => true,
                CURLOPT_ENCODING => '',
                CURLOPT_MAXREDIRS => 10,
                CURLOPT_TIMEOUT => 0,
                CURLOPT_FOLLOWLOCATION => true,
                CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                CURLOPT_CUSTOMREQUEST => 'POST',
                CURLOPT_POSTFIELDS => $datalog,
                CURLOPT_HTTPHEADER => array(
                    'Content-Type: application/json'
                ),
            )
        );

        $response = curl_exec($curl);

        curl_close($curl);
        $aran = json_decode($response, true);
        // var_dump($aran['data'][0]);

        for ($i = 0; $i < count($aran['data']); $i++) {
            $ip = $aran['data'][$i]['ip'];
            $port = $aran['data'][$i]['port'];
            $uid = $aran['data'][$i]['user_id'];
            $user_id = $aran['data'][$i]['user_id'];
            // var_dump($aran['data']);
            $timestamp = $aran['data'][$i]['timestamp'];
            $date = (date("Y-m-d H:m:s", $timestamp));

            $status = $aran['data'][$i]['status'];
            $punch = $aran['data'][$i]['punch'];
            $sql = "INSERT INTO datalog SET uid='" . $uid . "', datelog='" . $date . "', user_id='" . $user_id . "', status='" . $status . "', mamay='" . $ip . "', port='" . $port . "', punch='" . $punch . "'";
            $data->query($sql);
            // echo $sql;
        }
        echo "<h3>Đã đồng bộ xong, F5 để load lại trang!</h3>";
    }

}

if ($ht == 2) {
    // chạy vòng lặp để insert dữ liệu
    $sql = "SELECT b.tencd, b.IDnhanvien,b.IDcuahang, c.tenmay, b.Ten, b.MaNV, a.uid, a.datelog, a.user_id, a.status, a.mamay
    FROM datalog a  
    LEFT JOIN nhanvien_backup b ON b.uid = a.uid 
    LEFT JOIN maychamcong c ON a.mamay = c.mamay 
    where b.IDcuahang = c.IDcuahang
    order by a.datelog desc 
    limit 50";
    // echo $sql;
    $result = $data->query($sql);

    $chuoi .= "<table width='100%' border='0' cellpadding='0' cellspacing='0'>
<tr bgcolor='#F8E4CB'>
    <td align='center'
        style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 0.4pt 0in 0.4pt'
        height='23' width='41'><b>STT</b></td>
    <td width='829' align='center'
        style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
        <strong>Tên chấm công</strong>
    </td>
    <td width='829' align='center'
        style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
        <strong>Mã nhân viên</strong>
    </td>
    <td width='829' align='center'
        style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
        <strong>Cửa hàng</strong>
    </td>
    <td width='829' align='center'
        style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
        <strong>UID</strong>
    </td>
    <td width='829' align='center'
        style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
        <strong>Ngày chấm công</strong>
    </td>
    <td width='829' align='center'
        style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
        <strong>Giờ</strong>
    </td>
    <td width='829' align='center'
        style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
        <strong>User ID</strong>
    </td>
    <td width='829' align='center'
        style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
        <strong>Mã máy</strong>
    </td>
    <td width='829' align='center'
        style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
        <strong>Status</strong>
    </td>
</tr>";
    $SORT = 0;
    while ($re = $data->fetch_array($result)) {
        $SORT++;
        $datelogg = $newDate = date("d-m-Y", strtotime($re['datelog']));
        $timelogg = $newDate = date("H:m:s", strtotime($re['datelog']));
        $chuoi .= "<tr bgcolor='{color}'>
    <td style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 0.4pt 0in 0.4pt;padding-right:12px'
        align='right'>" . $SORT . "</td>
    <td valign='middle'
        style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
        <label for='sele<%=j%>' style='Font-Weight:Normal;Color:Black;'>" . $re['Ten'] . "</label>
    </td>
    <td valign='middle'
        style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
        <label for='sele<%=j%>' style='Font-Weight:Normal;Color:Black;'>" . $re['MaNV'] . "</label>
    </td>
    <td valign='middle'
        style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
        <label for='sele<%=j%>' style='Font-Weight:Normal;Color:Black;'>" . $re['tenmay'] . "</label>
    </td>
    <td valign='middle'
        style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
        <label for='sele<%=j%>' style='Font-Weight:Normal;Color:Black;'>" . $re['uid'] . "</label>
    </td>
    <td valign='middle'
        style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
        <label for='sele<%=j%>' style='Font-Weight:Normal;Color:Black;'>" . $datelogg . "</label>
    </td>
    <td valign='middle'
    style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
    <label for='sele<%=j%>' style='Font-Weight:Normal;Color:Black;'>" . $timelogg . "</label>
    </td>
    <td valign='middle'
        style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
        <label for='sele<%=j%>' style='Font-Weight:Normal;Color:Black;'>" . $re['user_id'] . "</label>
    </td>
    <td valign='middle'
    style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
    <label for='sele<%=j%>' style='Font-Weight:Normal;Color:Black;'>" . $re['mamay'] . "</label>
    </td>
    <td valign='middle'
        style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt'>
        <label for='sele<%=j%>' style='Font-Weight:Normal;Color:Black;'>" . $re['status'] . "</label>
    </td>
</tr>";
    }

    $chuoi .= "</table>";
    echo $chuoi;

}
if ($ht == 3) {
    $sql_where = " b.ID = " . $idtim;
    $sql = "SELECT a.uid, a.user_id, a.tencd, a.template, a.password,b.link, b.cong FROM nhanvien_backup a
    LEFT JOIN maychamcong b ON a.idcc = b.ID
    where 1 = 1 and " . $sql_where;
    // echo $sql;
    $result = $data->query($sql);
    while ($re = $data->fetch_array($result)) {
        $ip = $idmay;
        $uid = $re['uid'];
        $user_id = $re['user_id'];
        $tencd = $re['tencd'];
        $template = $re['template'];
        $idcc = $re['cong'];
        $linkcc = $re['link'];
        $sql_get = "SELECT ID, cong, link FROM maychamcong where 1=1 and ID =".$datadongbo;
        $dongbo = getdong($sql_get);
        $datais = '{"ips":[{"ip": "' . $dongbo['link'] . '", "port": ' . $dongbo['cong'] . '} ],"users":[{"uid": ' . $uid . ',"user_id": " ' . $user_id . '","name": "' . $tencd . '",
            "template": {"size": ' . $idcc . ' ,"uid": ' . $uid . ',"fid": 0,"valid": 1,"template": "' . $template . '"}}]}';
        // echo $datais; return;
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
        echo "<h3>Đã đồng bộ xong, F5 để load lại trang!</h3>";
    }
}
?>