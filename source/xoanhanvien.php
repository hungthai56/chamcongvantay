<?php
if (session_status() == PHP_SESSION_NONE)
    session_start();
if (!defined("IN_SITE")) {
    die('Hacking attempt!');
}

$quyen = $_SESSION["quyenad"];
$cuahang = $_SESSION["se_kho"];

global $data, $Caytmmcc;
$sql = "SELECT tenmay, link, cong, ID FROM maychamcong order by ID desc";
if ($result = $data->query($sql)) {
    while ($result_news = $data->fetch_array($result)) {
        $id = $result_news["cong"];
        $idmay = $result_news["ID"];
        $link = $result_news["link"];
        $name = $result_news["tenmay"] . " - " . $id;
        $select = "";
        if (trim($select_i) == trim($id)) {
            $select = "selected";
        }
        if (trim($idcall) != trim($id) && $action == false) {
            $Caytmmcc .= "<option title='$link' value='$id' alt='$idmay' $select>$name</option> ";
        } else {
            $Caytmmcc .= "<optgroup label='$name'></optgroup>";
            $action = true;
        }
        $action = false;
    }
}

$template->assign("maycd", $Caytmmcc);


global $data, $nhanviendilam;
if ($quyen == 1) {
    $sql = "SELECT ID, Name FROM cuahang order by ID desc";
} else {
    $sql = "SELECT ID, Name FROM cuahang where ID = $cuahang order by ID desc";
}

if ($result = $data->query($sql)) {
    while ($result_news = $data->fetch_array($result)) {
        $id = $result_news["ID"];
        $name = $result_news["Name"];
        $select = "";
        if (trim($select_i) == trim($id)) {
            $select = "selected";
        }
        if (trim($idcall) != trim($id) && $action == false) {
            $nhanviendilam .= "<option value='$id' $select>$name</option> ";
        } else {
            $nhanviendilam .= "<optgroup label='$name'></optgroup>";
            $action = true;
        }
        $action = false;
    }
}

$template->assign("cuahangvalue", $nhanviendilam);
?>