<?php
if (session_status() == PHP_SESSION_NONE)
    session_start();
if (!defined("IN_SITE")) {
    die('Hacking attempt!');
}

$quyen = $_SESSION["quyenad"];
$cuahang = $_SESSION["se_kho"];
?>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<?php
$template->assign("nhanvien", composx("userac", "MaNV", "Ten", ""));
$template->assign("maychamcong", composx("maychamcong", "tenmay", "mamay", ""));

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

if ($_POST["refresh"]) {
    $curl = curl_init();

    curl_setopt_array(
        $curl,
        array(
            CURLOPT_URL => 'https://mc7.ovn.vn:9090/api?type=restartserv',
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

}
function deletefinger($link, $cong, $IDcuahang)
{
    $curl = curl_init();
    $datadl = '{"ips":[{"ip": "' . $link . '", "port": "' . $cong . '", "idch": "' . $IDcuahang . '"}]}';
    curl_setopt_array(
        $curl,
        array(
            CURLOPT_URL => 'https://mc7.ovn.vn:9090/api?type=deleteip',
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 0,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'POST',
            CURLOPT_POSTFIELDS => $datadl,
            CURLOPT_HTTPHEADER => array(
                'Content-Type: application/json'
            ),
        )
    );
    $response = curl_exec($curl);
    // var_dump( $response);
    // return;
    curl_close($curl);
}
function addfinger($link, $cong, $cuahang, $idtele)
{
    $curl = curl_init();

    $datais = '{"ips":[{"ip": "' . $link . '", "port": "' . $cong . '", "idch": "' . $cuahang . '", "idtele": "' . $idtele . '"}]}';
    // echo $datais;
    curl_setopt_array(
        $curl,
        array(
            CURLOPT_URL => 'https://mc7.ovn.vn:9090/api?type=updateip',
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
}



if ($_POST["btnUpdate"] != "") {

    $ID = $_GET["id"];
    $cuahang = $_POST["cuahang"];
    $loaimay = $_POST["maytext"];
    $tenmay = $_POST["tenmay"];
    $link = $_POST["link"];
    $user = $_POST["user"];
    $password = $_POST["matkhau"];
    $cong = $_POST["cong"];
    $idtele = $_POST["idtele"];

    if ($_GET["id"] == "-1") {
        $sql = "insert into maychamcong set tenmay='$tenmay', link='$link', user='$user', matkhau='$password', cong='$cong', IDcuahang='$cuahang', loai='$loaimay', idtele='$idtele'";
        addfinger($link, $cong, $cuahang, $idtele);
    } else {
        $sql = "UPDATE maychamcong set tenmay='$tenmay', link='$link', user='$user', matkhau='$password', cong='$cong', IDcuahang='$cuahang', loai='$loaimay', idtele='$idtele' where ID='$ID'";
        // echo $sql;
        // return;
        deletefinger($link, $cong, $cuahang);
        addfinger($link, $cong, $cuahang, $idtele);
    }
    //echo $sql ;
    $update = $data->query($sql);
    $them = true;
}

if ($_GET["Del"] != "") {
    $link = $_GET["link"];
    $cong = $_GET["cong"];
    $IDcuahang = $_GET["IDcuahang"];
    deletefinger($link, $cong, $IDcuahang);

    curl_close($curl);
    $IDD = $_GET["Del"];
    $sql = "delete from maychamcong where ID = '0" . $IDD . "'";
    $update = $data->query($sql);
    $xoa = true;

} {
    $tam = "";
    $kt = 0;
    error_reporting(E_ALL ^ E_NOTICE);
    if ($_REQUEST["id"] == "" || $them || $xoa) {
        error_reporting(E_ALL ^ E_NOTICE);
        $NameS = $_POST["NameS"];
        $usertim = $_POST["usertim"];
        $Link = $_POST["Linktim"];

        $template->parse("main.block_khht1");
        $sql = "SELECT * from maychamcong";

        $sql_where = " where 1=1 ";
        if ($usertim != "")
            $sql_where .= " and user like '%" . $usertim . "%'";
        if ($NameS != "")
            $sql_where .= " and tenmay like '%" . $NameS . "%'";
        if ($Link != "")
            $sql_where .= " and link like '%" . $Link . "%'";
        $sql .= $sql_where;
        // echo "test" . $sql;
        error_reporting(E_ALL ^ E_NOTICE);

        if ($them) {
            $template->parse("main.block_cusupdate");
        }
        //$SOST = 0 ;
        // phan trang===================================================================
        $sql = "SELECT id FROM street $sql_where order by Name ";
        $query_rows = $data->query($sql);
        $num = $data->num_rows($query_rows);

        $page_start = 0;
        $page_row = 20;
        include("paging.php");
        $list_page = paging($num);

        if ($quyen == 1) {
            $sql = "SELECT * from maychamcong" . $sql_where . "
		    ORDER BY ID desc, ID limit $page_start,$page_row ";
        }else{
            $sql = "SELECT * from maychamcong" . $sql_where . " and IDcuahang = $cuahang 
		    ORDER BY ID desc, ID limit $page_start,$page_row ";
        }
        // echo $sql;

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
            $template->assign("ID", $result_news["ID"]);
            $template->assign("stt", $SOST);
            $template->assign("tenmaycc", $result_news["tenmay"]);
            $template->assign("linkcc", $result_news["link"]);
            $template->assign("usercc", $result_news["user"]);
            $template->assign("matkhaucc", $result_news["matkhau"]);
            $template->assign("congcc", $result_news["cong"]);
            $template->assign("IDcuahang", $result_news["IDcuahang"]);
            $template->assign("idtele", $result_news["idtele"]);
            if ($result_news["loai"] == 1) {
                $template->assign("loaimaycc", 'Máy Mới');
            } else {
                $template->assign("loaimaycc", 'Máy Cũ');
            }


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
            $template->assign("tinh", composx("tinh", "Name", $result["ID"], ""));
            $template->assign("quan", composx("quan", "Name", $result["ID"], ""));
            $template->assign("phuong", composx("phuong", "Name", $result["ID"], ""));
            $template->assign("street", composx("street", "Name", $result["id"], ""));
            $template->assign("cuahangsl", composx("cuahang", "Name", "ID", ""));
        } else {
            $sql = "SELECT * from maychamcong WHERE ID='" . $_REQUEST["id"] . "'";
            // echo "test".$sql;
            $query = $data->query($sql);
            $result = $data->fetch_array($query);
            $template->assign("t-c", "Cập nhập");
            $template->assign("tenmay", $result["tenmay"]);
            $template->assign("link", $result["link"]);
            $template->assign("user", $result["user"]);
            $template->assign("matkhau", $result["matkhau"]);
            $template->assign("cong", $result["cong"]);
            $template->assign("idtelesl", $result["idtele"]);
            $template->assign("cuahang", $result["IDcuahang"]);
            $template->assign("mayslvl", $result["loai"]);
            $template->assign("maytext", $result["loai"]);
            // echo $result["IDcuahang"];
            $template->assign("cuahangsl", composx("cuahang", "Name", $result["IDcuahang"], ""));
            // $template->assign("mayslvl", composx("cuahang", "Name", $result["IDcuahang"], ""));
        }

        $template->parse("main.block_kh");
    }
}
$template->parse("main.block_ajack");
$data->closedata();
?>