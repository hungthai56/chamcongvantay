<?php
if (session_status() == PHP_SESSION_NONE)
    session_start();
if (!defined("IN_SITE")) {
    die('Hacking attempt!');
}
?>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<?php

// echo $select_i;
global $data, $Caytm;
$sql = "SELECT tenmay, cong,link,mamay, ID FROM maychamcong order by ID desc";
if ($result = $data->query($sql)) {
    while ($result_news = $data->fetch_array($result)) {
        $id = $result_news["cong"];
        $link = $result_news["link"];
        $name = $result_news["tenmay"];
        $mamay = $result_news["mamay"];
        $select = "";
        if (trim($select_i) == trim($id)) {
            $select = "selected";
        }
        if (trim($idcall) != trim($id) && $action == false) {
            $Caytm .= "<option name='$mamay' title='$link' value='$id' $select>$name</option> ";
        } else {
            $Caytm .= "<optgroup label='$name'></optgroup>";
            $action = true;
        }
        $action = false;
    }
}

$template->assign("maychamcong", $Caytm);

global $data, $Idcc;
$sql = "SELECT tenmay, cong,link,mamay, ID FROM maychamcong order by ID desc";
if ($result = $data->query($sql)) {
    while ($result_news = $data->fetch_array($result)) {
        $id = $result_news["ID"];
        $link = $result_news["link"];
        $name = $result_news["tenmay"];
        $mamay = $result_news["mamay"];
        $select = "";
        if (trim($select_i) == trim($id)) {
            $select = "selected";
        }
        if (trim($idcall) != trim($id) && $action == false) {
            $Idcc .= "<option name='$mamay' title='$link' value='$id' $select>$name</option> ";
        } else {
            $Idcc .= "<optgroup label='$name'></optgroup>";
            $action = true;
        }
        $action = false;
    }
}

$template->assign("idcc", $Idcc);

?>