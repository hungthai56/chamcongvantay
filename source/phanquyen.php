<?php

if (session_status() == PHP_SESSION_NONE)
    session_start();
if (!defined("IN_SITE")) {
    die('Hacking attempt!');
}
$quyen = $_SESSION["quyenad"];
?>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<?php

// echo ;
if ($quyen == 1) {

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
        $macuahang = $_POST["macuahang"];
        $tenchamcong = $_POST["tenchamcong"];
        $manvdl = $_POST["manvdl"];
        $maychamcong = $_POST["maychamcong"];
        $tendangnhap = $_POST["tendangnhap"];
        $matkhau = $_POST["matkhau"];
        $password = md5($matkhau);
        $date = date("Y-m-d");

        if ($_GET["id"] == "-1") {
            $sql = "insert into userac set cuahang='$macuahang', Ten='$tenchamcong', MaNV='$manvdl', quyen='$maychamcong', username='$tendangnhap', password='$password', loai = 10, ngaytao='$date'";
            $update = $data->query($sql);
            //   echo $sql;
            //     return;
        } else {
            $sql = "UPDATE nhanvien set cuahang='$macuahang', Ten='$tenchamcong', MaNV='$manvdl', quyen='$maychamcong', username='$tendangnhap', password='$password', loai = 10 where uid='$ID'";
            // echo $sql;
            // return;
            $update = $data->query($sql);
        }
        $them = true;
    }

    if ($_GET["Del"] != "") {
        $IDD = $_GET["Del"];
        $sql = "delete from userac  where ID = " . $IDD . "";
        $update = $data->query($sql);
    } {
        $tam = "";
        $kt = 0;
        error_reporting(E_ALL ^ E_NOTICE);
        if ($_REQUEST["id"] == "" || $them || $xoa) {
            error_reporting(E_ALL ^ E_NOTICE);
            $NameS = $_POST["NameS"];
            $idmtim = $_POST["idmtim"];
            $manvtim = $_POST["manvtim"];

            global $data, $Caytmtim;
            $sql = "SELECT tenmay, link, ID, cong FROM maychamcong order by ID desc";
            if ($result = $data->query($sql)) {
                while ($result_news = $data->fetch_array($result)) {
                    $id = $result_news["cong"];
                    $link = $result_news["link"];
                    $name = $result_news["tenmay"] . " - " . $link . ":" . $id;
                    $select = "";
                    if (trim($select_i) == trim($id)) {
                        $select = "selected";
                    }
                    if (trim($idcall) != trim($id) && $action == false) {
                        $Caytmtim .= "<option value='" . $result_news["tenmay"] . "' $select>$name</option> ";
                    } else {
                        $Caytmtim .= "<optgroup label='$name'></optgroup>";
                        $action = true;
                    }
                    $action = false;
                }
            }

            $template->assign("maychamcong", $Caytmtim);

            $template->parse("main.block_khht1");
            $sql = "SELECT a.ID,a.Ten, a.username, a.MaNV, a.ngaytao, a.quyen, c.Name from userac as a  
        LEFT JOIN cuahang as c
        ON a.cuahang = c.ID where 1=1 and a.tinhluong = 1";

            $sql_where = " where 1=1 and a.tinhluong = 1";
            if ($manvtim != "")
                $sql_where .= " and a.MaNV like '%" . $manvtim . "%'";
            if ($NameS != "")
                if ($NameS != "")
                    $sql_where .= " and a.Ten like '%" . $NameS . "%'";
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
            $sql = "SELECT ID FROM userac where 1=1 and tinhluong = 1 order by Ten ";
            // echo $sql;
            $query_rows = $data->query($sql);
            $num = $data->num_rows($query_rows);

            $page_start = 0;
            $page_row = 10;
            include("paging.php");
            $list_page = paging($num);

            $sql = "SELECT a.ID, a.Ten, a.username, a.MaNV, a.ngaytao, a.quyen, c.Name from userac as a  
        LEFT JOIN cuahang as c
        ON a.cuahang = c.ID " . $sql_where . "
		ORDER BY a.ID desc, a.ID limit $page_start,$page_row ";


            // echo "test".$sql;
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
                $template->assign("stt", $SOST);
                $template->assign("ID", $result_news["ID"]);
                $template->assign("tennhanvien", $result_news["Ten"]);
                $template->assign("username", $result_news["username"]);
                $template->assign("MaNV", $result_news["MaNV"]);
                if ($result_news["quyen"] == 1) {
                    $template->assign("quyen", "Full Quyền");
                } else {
                    $template->assign("quyen", "Quyền Theo Xưởng");
                }
                $template->assign("ngaytao", $result_news["ngaytao"]);
                // echo "test".$result_news["phuong"];
                $template->assign("manhanvien", $result_news["MaNV"]);
                $template->assign("maycd", $result_news["Name"]);

                $template->parse("main.block_khht");
                $template->parse("main.block_khht2");
                $i++;
            }

            $template->assign("list_page", $list_page); // phan trang
            $template->parse("main.block_proht2");
        } else {

            if ($_REQUEST["id"] == "-1") {
                $template->assign("t-c", "Thêm mới  ");
                $template->assign("idgoi", $_POST["id"]);
                $template->assign("cuahangvalue", composx("cuahang", "Name", "ID", ""));

            } else {
                $sql = "SELECT a.ID,a.user_id,a.uid,a.IDnhanvien, b.MaNV, b.Ten,a.tencd , a.role ,c.tenmay, a.idcc, a.password from nhanvien as a 
            LEFT JOIN userac as b 
            ON a.IDnhanvien = b.ID
            LEFT JOIN maychamcong as c
            ON a.idcc = c.ID  WHERE a.uid='" . $_REQUEST["id"] . "'";
                // echo "test".$sql;
                $query = $data->query($sql);
                $result = $data->fetch_array($query);
                $template->assign("t-c", "Cập nhập");
                $template->assign("tennhanvien", $result["Ten"]);
                $template->assign("tenchamcong", $result["tencd"]);
                $template->assign("uidchamcong", $result["uid"]);
                $template->assign("idchamcong", $result["user_id"]);
                $template->assign("tennv", $result["IDnhanvien"]);
                $template->assign("tenmcd", $result["idcc"]);
                $template->assign("quyen", $result["role"]);
                $template->assign("matkhau", $result["password"]);
                $template->assign("Name", composx("userac", "MaNV", $result["IDnhanvien"], ""));
                // $template->assign("cuahangsl", composx("cuahang", "Name", $result["ID"], ""));
                $template->assign("cuahangvaluesl", composx("cuahang", "Name", "ID", ""));
            }
            global $data, $Caytmmcc;
            $sql = "SELECT tenmay, link, ID, cong, IDcuahang FROM maychamcong order by ID desc";
            if ($result = $data->query($sql)) {
                while ($result_news = $data->fetch_array($result)) {
                    $id = $result_news["cong"];
                    $link = $result_news["link"];
                    $idcuahang = $result_news["IDcuahang"];
                    $name = $result_news["tenmay"] . " - " . $link . ":" . $id;
                    $select = "";
                    if (trim($select_i) == trim($id)) {
                        $select = "selected";
                    }
                    if (trim($idcall) != trim($id) && $action == false) {
                        $Caytmmcc .= "<option name='$idcuahang' title='$link' value='$id' $select>$name</option> ";
                    } else {
                        $Caytmmcc .= "<optgroup label='$name'></optgroup>";
                        $action = true;
                    }
                    $action = false;
                }
            }

            $template->assign("maycd", $Caytmmcc);
            $template->assign("cuahangsl", composx("cuahang", "Name", "ID", ""));

            $template->parse("main.block_kh");
        }
    }
    $template->parse("main.block_ajack");
    $data->closedata();
}else{
    header("Location: default.php?act=loadmaychamcong");
    die();
}
?>