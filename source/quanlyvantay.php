<?php
if (session_status() == PHP_SESSION_NONE)
    session_start();
if (!defined("IN_SITE")) {
    die('Hacking attempt!');
}
?>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<?php
$quyen = $_SESSION["quyenad"];
$cuahang = $_SESSION["se_kho"];
// $template->assign("maychamcong", composx("maychamcong", "tenmay", "mamay", ""));
// $template->assign("street",composx("street","Name",$result["sduong"],""));
//=============================================	
if (isset($_POST['view'])) {
    header("Content-Type', application/pdf");
    readfile("templates/QUOC.pdf");
}

if ($_POST["cancel"] != "") {
    $ID = "";
    $_GET["id"] = "";
}

if ($_POST["btnUpdate"] != "") {
    $ID = $_GET["id"];
    $manv = $_POST["tennv"];
    $uid = $_POST["uidchamcong"];
    $idchamcong = $_POST["idchamcong"];
    $tencd = $_POST["tenchamcong"];
    $role = $_POST["quyen"];
    $password = $_POST["matkhau"];
    $maychamcong = $_POST["tenmcd"];
    $sql = "SELECT Count(ID) as Count from nhanvien_backup";
    $Count = getdong($sql);
    $Count = $Count['Count'] + 1;
    if ($_GET["id"] == "-1") {
        $sql = "insert into nhanvien_backup set IDnhanvien='$manv', uid='$Count', user_id='$Count', tencd='$tencd', role='$role', password='$password', idcc='$maychamcong'";
        // echo $sql;
    } else {
        $sql = "UPDATE nhanvien_backup set IDnhanvien='$manv', uid='$ID', user_id='$ID', tencd='$tencd', role='$role', password='$password', idcc='$maychamcong' where uid='$ID'";
        // echo $sql;
    }
    //echo $sql ;
    $update = $data->query($sql);
    $them = true;
}

if ($_GET["Del"] != "") {
    $IDD = $_GET["Del"];
    $sql = "delete from nhanvien_backup  where uid = '0" . $IDD . "'";
    $update = $data->query($sql);
    $xoa = true;

} {
    $tam = "";
    $kt = 0;
    error_reporting(E_ALL ^ E_NOTICE);
    if ($_REQUEST["id"] == "" || $them || $xoa) {
        error_reporting(E_ALL ^ E_NOTICE);
        $NameS = $_POST["NameS"];
        $idmtim = $_POST["idmtim"];
        $manvtim = $_POST["manvtim"];
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

        $template->parse("main.block_khht1");
        $sql = "SELECT a.ID,a.user_id,a.uid,a.IDnhanvien, a.MaNV, a.Ten,a.tencd, c.link, c.cong , a.role ,c.tenmay from nhanvien_backup as a 
        LEFT JOIN maychamcong as c
        ON a.IDcuahang = c.IDcuahang where 1=1 and a.idcc = c.cong and a.linkcc = c.link and a.tinhtrang = 1 ";

        $sql_where = " where 1=1 and a.tinhtrang = 1 ";
        if ($manvtim != "")
            $sql_where .= " and b.MaNV like '%" . $manvtim . "%'";
        if ($idmtim != "")
            if ($NameS != "")
                $sql_where .= " and b.Ten like '%" . $NameS . "%'";
        if ($idmtim != "")
            $sql_where .= " and c.tenmay like '%" . $idmtim . "%'";
        if ($stinh != "")
            $sql_where .= " and c.ID =" . $stinh;
        if ($sphuong != "")
            $sql_where .= " and d.ID =" . $sphuong;
        $sql .= $sql_where;
        // echo "test" . $sql;
        error_reporting(E_ALL ^ E_NOTICE);

        if ($them) {
            $template->parse("main.block_cusupdate");
        }
        //$SOST = 0 ;
        // phan trang===================================================================
        $sql = "SELECT ID FROM nhanvien_backup order by tencd ";
        $query_rows = $data->query($sql);
        $num = $data->num_rows($query_rows);

        $page_start = 0;
        $page_row = 10;
        include("paging.php");
        $list_page = paging($num);

        if ($quyen == 1) {
            $sql = "SELECT a.ID,a.user_id,a.uid,a.IDnhanvien, a.MaNV, a.Ten,a.tencd , a.role ,c.tenmay, c.link, c.cong, a.template from nhanvien_backup as a 
            LEFT JOIN maychamcong as c
            ON a.IDcuahang = c.IDcuahang" . $sql_where . "
            ORDER BY a.ID desc, a.ID limit $page_start,$page_row ";
        }else{
            $sql = "SELECT a.ID,a.user_id,a.uid,a.IDnhanvien, a.MaNV, a.Ten,a.tencd , a.role ,c.tenmay, c.link, c.cong, a.template from nhanvien_backup as a 
            LEFT JOIN maychamcong as c
            ON a.IDcuahang = c.IDcuahang" . $sql_where . " and a.IDcuahang = $cuahang 
            ORDER BY a.ID desc, a.ID limit $page_start,$page_row ";
        }
        // echo $sql;
        $query_rows = $data->query($sql);
        $result_rows = $data->num_rows($query_rows);
        $result = $data->query($sql);
        $i = $page_start;
        //=========================================================
        $SOST = $page_start;
        while ($result_news = $data->fetch_array($result)) {
            if ($mau == "white")
                $mau = "#EEEEEE";
            else
                $mau = "white";
            $SOST = $SOST + 1;
            $template->assign("color", $mau);
            $template->assign("ID", $result_news["uid"]);
            $template->assign("stt", $SOST);
            $template->assign("tennhanvien", $result_news["Ten"]);
            $template->assign("tencd", $result_news["tencd"]);
            $template->assign("manhanvien", $result_news["MaNV"]);
            $template->assign("idtinh", $result_news["idtinh"]);
            $template->assign("UIDcd", $result_news["uid"]);
            $template->assign("IDcd", $result_news["user_id"]);
            $vantay = "";
            if ($result_news["template"]) {
                $vantay = "Có vân tay";
            } else {
                $vantay = "Không có vân tay";
            }
            $template->assign("vantay", $vantay);
            $template->assign("maycd", $result_news["tenmay"]);
            $template->assign("linkcc", $result_news["link"]);
            $template->assign("cong", $result_news["cong"]);


            $template->parse("main.block_khht");
            $template->parse("main.block_khht2");
            $i++;
        }

        $template->assign("list_page", $list_page); // phan trang
        $template->parse("main.block_proht2");
    } else {

        if ($_REQUEST["id"] == "-1") {
            $template->assign("t-c", "Chuyển đổi vân tay nhân viên");
            $template->assign("idgoi", $_POST["id"]);
            $template->assign("tinh", composx("tinh", "Name", $result["ID"], ""));
            $template->assign("quan", composx("quan", "Name", $result["ID"], ""));
            $template->assign("phuong", composx("phuong", "Name", $result["ID"], ""));
            $template->assign("street", composx("street", "Name", $result["id"], ""));
        } else {
            $sql = "SELECT a.ID,a.user_id,a.uid,a.IDnhanvien, b.MaNV, b.Ten,a.tencd , a.role ,c.tenmay, a.idcc, a.password from nhanvien_backup as a 
            LEFT JOIN userac as b 
            ON a.IDnhanvien = b.ID
            LEFT JOIN maychamcong as c
            ON a.idcc = c.ID  WHERE a.uid='" . $_REQUEST["id"] . "'";
            // echo "test".$sql;
            $query = $data->query($sql);
            $result = $data->fetch_array($query);
            $template->assign("t-c", "Cập nhật vân tay");
            $template->assign("tennhanvien", $result["Ten"]);
            $template->assign("tenchamcong", $result["tencd"]);
            $template->assign("uidchamcong", $result["uid"]);
            $template->assign("idchamcong", $result["user_id"]);
            $template->assign("tennv", $result["IDnhanvien"]);
            $template->assign("tenmcd", $result["idcc"]);
            $template->assign("quyen", $result["role"]);
            $template->assign("matkhau", $result["password"]);
            $template->assign("Name", composx("userac", "MaNV", $result["IDnhanvien"], ""));

        }

        global $data, $Caytm;
        if ($quyen == 1) {
            $sql = "SELECT a.ten, a.MaNV, a.uid, c.Name FROM nhanvien_backup a 
            INNER JOIN cuahang c ON c.ID = a.IDcuahang
            where tinhtrang = 1 and a.template IS NOT NULL order by a.ID asc";
        }else{
            $sql = "SELECT a.ten, a.MaNV, a.uid, c.Name FROM nhanvien_backup a 
            INNER JOIN cuahang c ON c.ID = a.IDcuahang
            where tinhtrang = 1 and IDcuahang = $cuahang and a.template IS NOT NULL order by a.ID asc";
        }
        if ($result = $data->query($sql)) {
            while ($result_news = $data->fetch_array($result)) {
                $id = $result_news["uid"];
                $name = $result_news["MaNV"] . " - " . $result_news["ten"] . " - " . $result_news["Name"];
                $select = "";
                if (trim($select_i) == trim($id)) {
                    $select = "selected";
                }
                if (trim($idcall) != trim($id) && $action == false) {
                    $Caytm .= "<option value='$id' $select>$name</option> ";
                } else {
                    $Caytm .= "<optgroup label='$name'></optgroup>";
                    $action = true;
                }
                $action = false;
            }
        }

        $template->assign("nhanvien", $Caytm);

        global $data, $Caytmmcc;
        $sql = "SELECT tenmay, link, cong, ID, IDcuahang FROM maychamcong order by ID desc";
        if ($result = $data->query($sql)) {
            while ($result_news = $data->fetch_array($result)) {
                $id = $result_news["cong"];
                $idmay = $result_news["ID"];
                $link = $result_news["link"];
                $idcuahang = $result_news["IDcuahang"];
                $name = $result_news["tenmay"] . " - " . $id;
                $select = "";
                if (trim($select_i) == trim($id)) {
                    $select = "selected";
                }
                if (trim($idcall) != trim($id) && $action == false) {
                    $Caytmmcc .= "<option name='$idcuahang' alt='$idmay' title='$link' value='$id' $select>$name</option> ";
                } else {
                    $Caytmmcc .= "<optgroup label='$name'></optgroup>";
                    $action = true;
                }
                $action = false;
            }
        }

        $template->assign("maycd", $Caytmmcc);
        $template->parse("main.block_kh");
    }
}
$template->parse("main.block_ajack");
$data->closedata();
?>