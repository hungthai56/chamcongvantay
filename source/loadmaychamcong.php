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
// echo $cuahang;
//=============================================	
if (isset($_POST['view'])) {
    header("Content-Type', application/pdf");
    readfile("templates/QUOC.pdf");
}

if ($_POST["cancel"] != "") {
    $ID = "";
    $_GET["id"] = "";
}

if ($_POST["synclock"] != "") {
    $sql = "SELECT link, cong FROM maychamcong";
    $result = $data->query($sql);
    while ($re = $data->fetch_array($result)) {
        $link = $re['link'];
        $cong = $re['cong'];
        $data_list = '{"ips":{"ip": "' . $link . '","port": ' . $cong . '}}';
        // echo $data_list;
        // return;
        $curl = curl_init();

        curl_setopt_array(
            $curl,
            array(
                CURLOPT_URL => 'https://mc7.ovn.vn:9090/api?type=syntime',
                CURLOPT_RETURNTRANSFER => true,
                CURLOPT_ENCODING => '',
                CURLOPT_MAXREDIRS => 10,
                CURLOPT_TIMEOUT => 0,
                CURLOPT_FOLLOWLOCATION => true,
                CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                CURLOPT_CUSTOMREQUEST => 'POST',
                CURLOPT_POSTFIELDS => $data_list,
                CURLOPT_HTTPHEADER => array(
                    'Content-Type: application/json'
                ),
            )
        );
        $response = curl_exec($curl);
        curl_close($curl);
    }

}

function setuser($link, $manv, $tencd, $password, $maychamcong)
{

    $data = '{"ips":{"ip": "' . $link . '", "port": ' . $maychamcong . '},"users":{"uid": "' . $manv . '","name": "' . $tencd . '","privilege" : "0","password" :"' . $password . '", "group_id" :"0","user_id" :"' . $manv . '","card" :"0"}}';
    // echo $data;
    // return;
    $curl = curl_init();
    curl_setopt_array(
        $curl,
        array(
            CURLOPT_URL => 'https://mc7.ovn.vn:9090/api?type=setnew',
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 0,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'POST',
            CURLOPT_POSTFIELDS => $data,
            CURLOPT_HTTPHEADER => array(
                'Content-Type: application/json'
            ),
        )
    );

    $response = curl_exec($curl);

    curl_close($curl);

    // var_dump($response);
    // return $response;
}

function updateuser($link, $manv, $tencd, $password, $maychamcong, $check)
{
    $sql_where = "uid = " . $manv;
    $sql = "SELECT uid, template FROM nhanvien_backup where 1 = 1 and " . $sql_where;
    $tam = getdong($sql);
    $template = $tam['template'];

    $datais = '{"ips":{"ip": "' . $link . '", "port": ' . $maychamcong . '},"users": {"uid": ' . $manv . ',"user_id": "' . $manv . '","name": "' . $tencd . '","password": "' . $password . '","template":{"size": 0 , "uid": ' . $manv . ', "fid": 0, "valid": 1, "template": "' . $template . '"}}}';

    $curl = curl_init();
    curl_setopt_array(
        $curl,
        array(
            CURLOPT_URL => 'https://mc7.ovn.vn:9090/api?type=updateuser',
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
    // return $response;
}

if ($_POST["btnUpdate"] != "") {
    $ID = $_GET["id"];
    $link = $_POST["titlelink"];
    $port = $_POST["cong"];
    $manv = $_POST["iduser"];
    $uid = $_POST["uidchamcong"];
    $idchamcong = $_POST["idchamcong"];
    $tencd = $_POST["tenchamcong"];
    $nhanviendl = $_POST["nhanviendl"];
    $manvdl = $_POST["manvdl"];
    $role = 1;
    $password = $_POST["matkhau"];
    $maychamcong = $_POST["tenmcd"];
    $portmaycc = $_POST["portmaycc"];
    $cuahang = $_POST["macuahang"];
    $date = date("Y-m-d");
    $sql = "SELECT Count(ID) as Count from nhanvien_backup";
    $Count = getdong($sql);
    $Count = $Count['Count'] + 1;
    $rec = "";
    if ($_GET["id"] == "-1") {
        $sql = "insert into nhanvien_backup set linkcc='$link', IDnhanvien='$manv', uid='$manv', user_id='$manv', tencd='$tencd', role='$role', password='$password', idcc='$portmaycc', IDcuahang='$cuahang', ngaytao='$date', tinhtrang = 1,  Ten='$nhanviendl',  MaNV='$manvdl'";
        $update = $data->query($sql);
        $rec = setuser($link, $manv, $tencd, $password, $maychamcong);
        // return;
    } else {
        $sql = "UPDATE nhanvien_backup set linkcc='$link', IDnhanvien='$manv', uid='$manv', user_id='$ID', tencd='$tencd', role='$role', password='$password', idcc='$portmaycc', IDcuahang='$cuahang', Ten='$nhanviendl',  MaNV='$manvdl' where uid='$ID'";
        // echo $sql;
        $update = $data->query($sql);
        $rec = updateuser($link, $manv, $tencd, $password, $maychamcong, $check);
        // return;
    }
    //echo $sql ;
    $them = true;
}

if ($_GET["Del"] != "") {
    $IDD = $_GET["Del"];
    $sql = "delete from nhanvien_backup  where ID = " . $IDD . "";
    // echo $sql;
    // return;
    $update = $data->query($sql);
    $xoa = true;
    $ip = $_GET["ip"];
    $port = $_GET["port"];
    $uid = $_GET["uid"];
    $data1 = '{ "from":{"ip":"' . $ip . '", "port": "' . $port . '"},"isall":false,"users":{ "uid": ' . $uid . ', "user_id": ' . $uid . ' }}';
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
            CURLOPT_POSTFIELDS => $data1,
            CURLOPT_HTTPHEADER => array(
                'Content-Type: application/json'
            ),
        )
    );

    $response = curl_exec($curl);

    curl_close($curl);
    // var_dump($response);
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
        $sql = "SELECT a.ID, a.template,a.user_id,a.uid,a.IDnhanvien, a.tencd , a.role ,c.tenmay, c.link, c.cong, a.ngaytao, a.Ten, a.MaNV from nhanvien_backup as a  
        LEFT JOIN maychamcong as c
        ON a.IDcuahang = c.IDcuahang where 1=1 and a.idcc = c.cong and a.linkcc = c.link and a.tinhtrang = 1";

        $sql_where = " where 1=1 and a.tinhtrang = 1 ";
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
        $sql = "SELECT ID FROM nhanvien_backup where 1=1 and tinhtrang = 1 order by tencd ";
        // echo $sql;
        $query_rows = $data->query($sql);
        $num = $data->num_rows($query_rows);

        $page_start = 0;
        $page_row = 10;
        include("paging.php");
        $list_page = paging($num);


        if ($quyen == 1) {
            $sql = "SELECT a.ID, a.template,a.user_id,a.uid,a.IDnhanvien,a.tencd , a.role ,c.tenmay, c.link, c.cong, a.ngaytao, a.Ten, a.MaNV from nhanvien_backup as a 
            LEFT JOIN maychamcong as c
            ON a.IDcuahang = c.IDcuahang " . $sql_where . "
            ORDER BY a.ID desc, a.ID limit $page_start,$page_row ";
        } else {
            $sql = "SELECT a.ID, a.template,a.user_id,a.uid,a.IDnhanvien,a.tencd , a.role ,c.tenmay, c.link, c.cong, a.ngaytao, a.Ten, a.MaNV from nhanvien_backup as a 
            LEFT JOIN maychamcong as c
            ON a.IDcuahang = c.IDcuahang " . $sql_where . " and a.IDcuahang = $cuahang 
            ORDER BY a.ID desc, a.ID limit $page_start,$page_row ";
            
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
            $template->assign("uid", $result_news["uid"]);
            $template->assign("stt", $SOST);
            $template->assign("tennhanvien", $result_news["Ten"]);
            $template->assign("ngaytao", $result_news["ngaytao"]);
            if ($result_news["template"]) {
                $template->assign("checkvantay", "<img style='width: 30px;margin: 3px;' src='images/vantay.png' border='0'>");
            } else {
                $template->assign("checkvantay", "<img style='width: 30px;margin: 3px;' src='images/vantaycheck.png' border='0'>");
            }
            $template->assign("tencd", $result_news["tencd"]);
            // echo "test".$result_news["phuong"];
            $template->assign("manhanvien", $result_news["MaNV"]);
            $template->assign("idtinh", $result_news["idtinh"]);
            $template->assign("UIDcd", $result_news["uid"]);
            $template->assign("IDcd", $result_news["user_id"]);
            $template->assign("quyen", $result_news["role"]);
            $template->assign("maycd", $result_news["tenmay"]);
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
            $template->assign("t-c", "Thêm mới  ");
            $template->assign("idgoi", $_POST["id"]);
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

        } else {
            $sql = "SELECT a.ID,a.user_id,a.uid,a.IDnhanvien, a.IDcuahang, a.MaNV, a.Ten,a.tencd , a.role ,c.tenmay, a.idcc, a.password, a.linkcc from nhanvien_backup as a 
            LEFT JOIN maychamcong as c
            ON a.idcc = c.ID  WHERE a.ID='" . $_REQUEST["id"] . "'";
            // echo $sql;
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
            $template->assign("macuahangsl", $result["IDcuahang"]);
            $template->assign("nhanviendlsl", $result["Ten"]);
            $template->assign("nhanviendlsl", $result["Ten"]);
            $template->assign("manvdlsl", $result["MaNV"]);
            $template->assign("titlelinksl", $result["linkcc"]);
            $template->assign("idusersl", $result["uid"]);
            $template->assign("Name", composx("userac", "MaNV", $result["uid"], ""));
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
        }
        global $data, $Caytmmcc;
        if ($quyen == 1) {
            $sql = "SELECT tenmay, link, ID, cong, IDcuahang FROM maychamcong order by ID desc";
        } else {
            $sql = "SELECT tenmay, link, ID, cong, IDcuahang FROM maychamcong where IDcuahang = $cuahang order by ID desc";
        }

        if ($result = $data->query($sql)) {
            while ($result_news = $data->fetch_array($result)) {
                $id = $result_news["cong"];
                $idcc = $result_news["ID"];
                $link = $result_news["link"];
                $idcuahang = $result_news["IDcuahang"];
                $name = $result_news["tenmay"] . " - " . $link . ":" . $id;
                $select = "";
                if (trim($select_i) == trim($id)) {
                    $select = "selected";
                }
                if (trim($idcall) != trim($id) && $action == false) {
                    $Caytmmcc .= "<option name='$idcuahang' title='$link' value='$id' alt='$idcc' $select>$name</option> ";
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
?>