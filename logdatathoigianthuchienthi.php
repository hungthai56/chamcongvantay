<?php
header("Access-Control-Allow-Origin: *");
header('Access-Control-Allow-Methods: GET, POST, OPTIONS');
header("Access-Control-Allow-Headers: Content-Type, Authorization");
header('Content-Type: text/html; charset=utf-8');
date_default_timezone_set('Asia/Ho_Chi_Minh');

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

$urllink = $_GET['url'];
header('Content-Type: image/jpeg');


$log = file_get_contents("https://chamcong.ovn.vn/log.json");
$data2 = $_POST['DATA'];
$tmp = explode('*@!', $data2);
// chạy vòng lặp để insert dữ liệu
$sql = "SELECT b.tencd, b.IDnhanvien, b.IDcuahang, b.Ten, b.MaNV, a.uid, a.datelog, a.user_id, a.status, a.mamay FROM datalog a
        LEFT JOIN nhanvien b
        ON b.uid = a.uid order by a.ID desc limit 10";
// echo $sql;
$result = $data->query($sql);
$SORT = 0;
while ($re = $data->fetch_array($result)) {
    $SORT++;
    $sql1 = "SELECT Name FROM cuahang where 1 = 1 and ID=" . $re['IDcuahang'];
    $tamch = getdong($sql1);
    $ch = $tamch['Name'];
    $datelogg = $newDate = date("d-m-Y", strtotime($re['datelog']));
    $timelogg = $newDate = date("H:i:s", strtotime($re['datelog']));
    $chuoi .= "<tr bgcolor='{color}'>
<td style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding: 5px 10px;padding-right:12px;background: #EC4D;'
    align='right'>" . $SORT . "</td>
<td valign='middle'
    style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding: 5px 10px;background: #EC4D;'>
    <label for='sele<%=j%>' style='Font-Weight:Normal;Color:Black; font-weight: 700 !important;'>" . $re['Ten'] . "</label>
</td>
<td valign='middle'
    style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding: 5px 10px;background: #EC4D;'>
    <label for='sele<%=j%>' style='Font-Weight:Normal;Color:Black; font-weight: 700 !important;'>" . $re['MaNV'] . "</label>
</td>
<td valign='middle'
    style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding: 5px 10px;background: #EC4D;'>
    <label for='sele<%=j%>' style='Font-Weight:Normal;Color:Black; font-weight: 700 !important;'>" . $ch . "</label>
</td>
<td valign='middle'
    style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding: 5px 10px;background: #EC4D;'>
    <label for='sele<%=j%>' style='Font-Weight:Normal;Color:Black; font-weight: 700 !important;'>" . $re['uid'] . "</label>
</td>
<td valign='middle'
    style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding: 5px 10px;background: #EC4D;'>
    <label for='sele<%=j%>' style='Font-Weight:Normal;Color:Black; font-weight: 700 !important;'>" . $datelogg . "</label>
</td>
<td valign='middle'
    style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding: 5px 10px;background: #EC4D;'>
    <label for='sele<%=j%>' style='Font-Weight:Normal;Color:Black; font-weight: 700 !important;'>" . $timelogg . "</label>
</td>
<td valign='middle'
style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding: 5px 10px;background: #EC4D;'>
<label for='sele<%=j%>' style='Font-Weight:Normal;Color:Black; font-weight: 700 !important;'>" . $re['user_id'] . "</label>
</td>
<td valign='middle'
    style='border:solid windowtext 1.0pt; mso-border-alt:solid windowtext .5pt;padding: 5px 10px;background: #EC4D;'>
    <label for='sele<%=j%>' style='Font-Weight:Normal;Color:Black; font-weight: 700 !important;'>" . $re['status'] . "</label>
</td>
</tr>";
}


echo $chuoi;




?>