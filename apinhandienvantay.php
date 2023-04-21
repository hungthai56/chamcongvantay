<?php

session_start();

$_SESSION["LoginID"]=1;$_SESSION["UserName"]='zalo';

header("Content-Type: application/json");

header("Access-Control-Allow-Origin: *");

header('Access-Control-Allow-Methods: POST,GET, OPTIONS');

header("Access-Control-Allow-Headers: Content-Type, Authorization");

header('Content-Type: text/html; charset=utf-8');

//if ($_SESSION["LoginID"]=="") return ;

 
 $ip_address = $_SERVER['REMOTE_ADDR'];
  date_default_timezone_set('Asia/Ho_Chi_Minh');

$root_path =getcwd()."/"  ;



include($root_path."includes/config.php");



include($root_path."includes/class.mysql.php");

include($root_path."includes/function.php");

include($root_path."includes/function_local.php");



$data = new class_mysql();

$data->config();

$data->access();
$type=$_REQUEST["type"];
$json = file_get_contents('php://input');


file_put_contents("log_vantay.json",$type."===".$json."\n",FILE_APPEND);

$table="nhanviendilam";
$type=$_REQUEST["type"];
$res=array("code"=>200,"message"=>"Đã chấm công!","data"=>"");

$json=json_decode($json,true);
switch ($type) {
	case 'test':
		$res=array("code"=>200,"message"=>"Đã chấm công test!","data"=>$dt);
		echo file_get_contents("log_vantay.json");
		break;
	case 'vantaychamcong':
	
		//  $table="nhanviendlam";
	
			$dt=addChamcong3($json,$type);
			
			// echo json_encode($dt,JSON_HEX_TAG | JSON_HEX_APOS | JSON_HEX_QUOT | JSON_HEX_AMP | JSON_UNESCAPED_UNICODE);
			// return;
			if($dt==0){
				$json=json_decode($json,true);
					
				// $r=thongbaoamthanh(array("from"=>array("ip"=>$json["ip"],"port"=>$json["port"])));
			
				$res=array("code"=>203,"message"=>"Đã chấm công cách đây ít phút!","data"=>$r);
					

				
			}
			else if($dt==-1){
			
				$res=array("code"=>201,"message"=>"Lỗi vui lòng thử lại!","result"=>$dt,"data"=>json_decode($json ,true));
			
			}else if($dt==-2){
				$res=array("code"=>204,"message"=>"Không tìm thấy nhân viên!","data"=>[]);
			}else{

				$res=array("code"=>200,"message"=>"Đã chấm công!","data"=>$dt);

			}
		break;
	case 'userpin':
	
		//  $table="nhanviendlam";
	
			$dt=addNewuser($json,$type);
		
			if($dt){
				$res=array("code"=>200,"message"=>"Successfully!","data"=>$dt);
			
				
			}
			else{

				$res=array("code"=>200,"message"=>"Fail","data"=>$dt);

			}
		break;
	case 'temppin':
	
		//  $table="nhanviendlam";
	
			$dt=addNewuTemplate($json,$type);
		
			if($dt){
				$res=array("code"=>200,"message"=>"Successfully!","data"=>$dt);
			
				
			}
			else{

				$res=array("code"=>200,"message"=>"Fail","data"=>$dt);

			}
		break;
	default:
		// $dt=addChamcong2($json,$type);
		// 	if($dt==0){
		// 		$res=array("code"=>203,"message"=>"Đã chấm công cách đây ít phút!","data"=>[]);
		// 	}
		// 	else if($dt==-1){
			
		// 		$res=array("code"=>201,"message"=>"Lỗi vui lòng thử lại!","result"=>$dt,"data"=>json_decode($json ,true));
			
		// 	}	else if($dt==-2){
		// 		$res=array("code"=>204,"message"=>"Không tìm thấy nhân viên!","data"=>[]);
		// 	}else{

		// 		$res=array("code"=>200,"message"=>"Đã chấm công!","data"=>$dt);

		// 	}
			// $res=array("code"=>201,"message"=>"Lỗi vui lòng thử lại!","result"=>$dt);
		
		break;
}
// if($type && $type=="overtime"){
// 	$table="nhanvientangca";
// }

	

 

echo json_encode($res,JSON_HEX_TAG | JSON_HEX_APOS | JSON_HEX_QUOT | JSON_HEX_AMP | JSON_UNESCAPED_UNICODE);
function addNewuser($json,$type){
	global $data;
// {"ip": "14.224.173.186", "port": 53358, "idch": 1, "uid": "2", "name": "Wjgaupj", "pri": "0", "password": "", "card": "", "grp": "1", "tz": "0000000100000000", "verify": "0", "vicecard": "", "startvicecard": "0", "endvicecard": "0\n"}
	$ngaytao = gmdate('Y-m-d  H:i:s',time()+ 7*3600) ;
	$idch =$json["idch"];
	$ip =$json["ip"];
	$port =$json["port"];
	$uid =$json["uid"];
	$name = $json["name"];
	$pri = $json["pri"];
	$password = $json["password"];
	$card =$json["card"];
	$grp =$json["grp"];
	$tz =$json["tz"];
	$verify = $json["verify"];
	$vicecard = $json["vicecard"];
	$startvicecard =$json["startvicecard"];
	$endvicecard = $json["endvicecard"];
	
	$sql="insert into nhanvien1 (uid,user_id,IDnhanvien,IDcuahang,tencd,role,password,template,idcc,linkcc,tinhtrang,ngaytao) values ('$uid','$uid','$uid','$idch','$name',0,'$password','',0,0,0,'$ngaytao')";

	// echo $sql;
	$update=$data->query($sql);
	return $update;
}

function addNewuTemplate($json,$type){
	global $data;
// {"ip": "14.224.173.186", "port": 53360, "idch": 1, "uid": "2", "template": "TVdTUzIxAAAEFBkECAUHCc7QAAAcFWkBAAAAgzkjoxQ0AIkPawCDAPsbbABMAGsPiABbFOgPrgBjAE8PVxSDAFQPiwBKAGobfwCQAFoPnwCcFEoPogCeALAPnhSlAFgPZAB5AM4blgDFADQPmwDOFEEPowDNAOwPthTQACkOxQAWAKwabwDkADgPegDsFKgP3gDoAGsPTBTzAE4PVAA7AEIbqwAKAasPkAAQFTwO2AAfAWQP6BQhAaMP8gD2AZ8aZAA2AYkNZAAyFaAPgQA4AVsPxBQ9AZkP5wCCAZQbvABTAY0PYQBTFZEP4wBbAUcPNxRuj2sjtJYjGnNvyW6ChWsbF5WGlX/uswBTHoYXZR7nbTr/kBf8Gy3vJe9CBZ4RLPoq5W+BcB+lC1seCPPQ724kCYyrgeqCZAxeDBLc1HhuHJb08fRhAKeB5RRcgYWDXYHgAvLo8/iq9bruYAKBl9v8VgRyCKKFURxnESYa3fi8ChoFrwYeD+sNxPry5XO24QH6CPsKFR1gBSYWmfn8Dobo/O+mTq9HLwhaEB8QZRfi/MYQKRpz+Mb6OREA9rL6uPZt/v4OLAaq5NP6yfWK9gvrNxnuxAUgNgHHTRkyBQCbHg9MwgCUMQf+Q/4DAEUqB+sCAKM2icLDAK8jEUT+AwBWhW3GGgF3QAPAODs+UNQHAGdIcMIHwMcbAW9J+jIuBDf76sADAGpNbQQNBL9ej4PFZ4AFEAQvYdwzwCrAhf9HBgGqZYyMlgXCh3bBwAoAsmbS/sRfwDATAFZ/JzP41f3A/v/+wAX/+9RnCQBOhFYEwcVGwQsAU4ZQOsHG1FRVFwAujxPAN+vD+/3B/cA4wPvqwMH9wP/AzQCMm2bDw8HBh8EAfoVflxQAXJQT/SczQf//wFSDzgBSiFHCaErAwMkAX4hIwF3C///7EASKnYDHw8SCo3h4BQGWo2nGnQfBxGp0bQUAnqTK/DcdAZmoYqzBBmQUFGO4xiz8/Dr9+tT8/8BZDwCmwD7rU47B/4nCwQCl1SZhDACXyfKLdtbDwP8KAF8IQFbUwsOFCgCkFSvF1VR3DADB0GHAxdLNxZZtBwAM1y/VwWIaANrlbv9t1Y7GxMLCwgfBxdTD/8LAwcIGEAR45j3BiHXCBWprHAFy5zfBwQTBxdUHAMHrJ8AEWwAU4OwpwMAexf30pP54YneNwAHAx4fBwz7AVATFR/1EVxsAVfrDj2j76Pz9I/3A/zjB+tX+/8JWBRCUAkjUOQcQrg4iBMCDEBFSF0wzCtVYEyXClv/AwMPQENAIof9gwP7/Oe3/1irD/sE5A9XEOhvACBBNQ+c8/VzUDRBQSf0pqf57FxHBVAP/BdVSXOD8/MIEEFObA/vUU0IAC0MBxQAPUVMA\n==", "fid": "6", "size": "1392", "val": "1"
	$ngaytao = gmdate('Y-m-d  H:i:s',time()+ 7*3600) ;
	$idch =$json["idch"];
	$ip =$json["ip"];
	$port =$json["port"];
	$uid =$json["uid"];
	$template = $json["template"];
	$fid = $json["fid"];
	$size = $json["size"];
	$val =$json["val"];
	$sql="update  nhanvien1 set template='$template' where uid='$uid' and IDcuahang='$idch'";
	$update=$data->query($sql);
	return $update;
}
function addChamcong3($json,$type){
	global $data;
	$table="nhanviendilam";
	
	
	$user_id=$json["user_id"];
 		$timestamp=strtotime($json["timestamp"]);
		  $ngaytao = gmdate('Y-m-d  H:i:s', strtotime($json["timestamp"])+ 7*3600) ;
		
		 // $note=$json["note"];
		//$member_dinhdanh=$json["member_dinhdanh"];
	    //$checkresult[$json["checkresult"]["numStatus"]]=$json["checkresult"]["numStatus"];
		// $checkresult["result"]=$json["checkresult"]["result"];
		// $checkresult["check"]=$json["checkresult"]["check"];
		 	$cuahangquet=$json["idch"];
			//$checkresult=json_encode($checkresult);
		  //$ngaytao = gmdate('Y-m-d H:i:s', time() + 7*3600) ;
	  	$ngayk = gmdate('Y-m-d H:i:s', strtotime($ngaytao)+ 7*3600-300) ;


		
		 $ngay = gmdate('Y-m-d',strtotime($ngaytao)) ;
		$ip=$json["ip"].":".$json["port"];
	 
	if($user_id){

		$sql="select a.ID as IDNV,MaNV,Ten from userac a where a.ID=$user_id";

		

		$dong=getdong($sql);

		if ($dong["IDNV"]) {
			$manv=$dong["MaNV"];
			$note="Check mói";
			$checkresult=$json["ip"].":".$json["port"];
			$sql="select a.ID,a.Ten,a.chucvu,b.loaigio,b.loaica,b.sogiolam,b.batdau,b.ketthuc,b.batdau2,b.ketthuc2,b.batdau3,b.ketthuc3,b.nghithu7,b.nghitrua,b.tangcachunhat,a.cuahang,c.Name as tencuahang,b.tinhcom from userac a left join calamviec b on a.calamviec=b.id left join cuahang c on a.cuahang=c.ID where a.ID=$user_id limit 1 " ;
			
			
			$tam = getdong($sql) ;

			if ($tam=='')  return ;
			$thongtin =$tam['loaigio']."*".$tam['sogiolam']."*".$tam['batdau']."*".$tam['ketthuc']."*".$tam['batdau2']."*".$tam['ketthuc2']."*".$tam['chucvu']."*".$tam['cuahang']."*".$tam['nghithu7']."*".$tam['tangcachunhat']."*".$tam['nghitrua']."*chấm công vân tay-$checkresult*".$tam['loaica']."*".$tam['batdau3']."*".$tam['ketthuc3']."*".$tam['tinhcom']."*";
			if(!$cuahangquet){
				$cuahangquet=$tam['cuahang'];
			}
			$mangchma= taomang("cuahang","ID","macuahang");
			

				$sql = " select  count(ID) as solan  from  $table where IDnhanvien ='$user_id' and ngaytao > '$ngay 00:00:00'   " ; 
				$lan = 1;
				$tamk = getdong($sql) ;
			


				// kiểm tra nửa đêm  kiểm tra nửa đêm kiểm tra nửa đêm kiểm tra nửa đêm kiểm tra nửa đêm kiểm tra nửa đêm kiểm tra nửa đêm
			$date_=date("Y-m-d",strtotime($ngaytao));
				$date_before=date("Y-m-d",strtotime ('-1 day',strtotime($date_)));
				$date_time=date("Y-m-d H:i:s",strtotime($ngaytao));
				$hours_=date("H:i:s",strtotime($ngaytao));
				
				$mid=date("Y-m-d H:i:s",strtotime($date_." 00:00:00"));
				$mor=date("Y-m-d H:i:s",strtotime($date_." 06:00:00"));	
				if($date_time >=$mid && $date_time<=$mor){
					
					$sql="select  ID,loai from  $table where  IDnhanvien ='$user_id' and  ngaytao >= '$date_before' and ngaytao <= '$date_before 25:59:59' order by ID  desc limit 1";
					$dong=getdong($sql);
					if($dong["ID"] && $dong["loai"]==1){
						$lan=2;
						$tamk['solan']=2;
						$sql = " insert into $table set manv ='$manv',IDnhanvien ='$tam[ID]',Name ='$tam[Ten]',NameN='".$tam['Ten']."',cuahang='$tam[tencuahang]',IDcuahang='$cuahangquet',note='$note',ngaytao='$date_before 23:59:59',loai='$lan',ip='$ip',thongtin='$thongtin',kiemtra='$checkresult' ";
						$tt= $data->query($sql);	

						$lan=1;
						$tamk['solan']=1;
						$sql = " insert into $table set manv ='$manv',IDnhanvien ='$tam[ID]',Name ='$tam[Ten]',NameN='".$tam['Ten']."',cuahang='$tam[tencuahang]',IDcuahang='$cuahangquet',note='$note',ngaytao='$mid',loai='$lan',ip='$ip',thongtin='$thongtin',kiemtra='$checkresult' ";

						$tt= $data->query($sql);	
					}
					
				}
				

			// kiểm tra nửa đêm  kiểm tra nửa đêm kiểm tra nửa đêm kiểm tra nửa đêm kiểm tra nửa đêm kiểm tra nửa đêm kiểm tra nửa đêm

					if (laso($tamk['solan']) ==0) $lan = 1;

					else if (laso($tamk['solan']) ==1 ) $lan = 2;

					else if (laso($tamk['solan']) ==2 ) $lan = 1;

					else if (laso($tamk['solan']) ==3 ) $lan = 2;

					else if (laso($tamk['solan']) ==4 ) $lan = 1;

					else if (laso($tamk['solan']) ==5 ) $lan = 2;

					else if (laso($tamk['solan']) ==6 ) $lan = 1;	

					else if (laso($tamk['solan']) ==7 ) $lan = 2;

					else if (laso($tamk['solan']) ==8 ) $lan = 1;


				
				
				$sql="select ID from  $table where  IDnhanvien ='$user_id' and  ngaytao > '$ngayk' limit 1 ";

				$dong=getdong($sql);

				if(!$dong["ID"]){

						$sql = " insert into $table set manv ='$manv',IDnhanvien ='$tam[ID]',Name ='$tam[Ten]',NameN='".$tam['Ten']."',cuahang='$tam[tencuahang]',IDcuahang='$cuahangquet',note='$note',ngaytao='$ngaytao',loai='$lan',ip='$ip',thongtin='$thongtin',kiemtra='$checkresult' ";
				// return $sql;
						$tt= $data->query($sql);	
						$sql = " select  a.*,b.IDfb from $table a left join userac b on a.IDnhanvien=b.ID  where IDnhanvien ='$tam[ID]' and a.ngaytao='$ngaytao'" ;
				
						$update = getdong($sql) ;
						
						$update["ngaytao"]=date("d/m/Y h:i:s");
						$update["time"]=date("h:i:s");
						$update["checkresult"]=$json["checkresult"];
						$update["tencuahang"]=$tam["tencuahang"];
				
						// $dong["ID"]
						// $res3 = sendApi(
         	          	//  "https://image.fmstyle.com.vn/anhchamcong/nhanvienluuanhv4.php", "POST", array("manv"=>$update["ID"], "url"=>$linkimg));
							// var_dump($update);
						if($_SERVER['SERVER_NAME']=="siandchip.vn"){
								
							nhantintele($update["IDfb"],"Đã chấm công lúc: ".$update["ngaytao"],$image = "", $tieude='',$notification= false ,$idtraloi="");
						}else{
								$datagoi = [
								'chat_id' => $update["IDfb"], 
								'text' =>"Đã chấm công lúc: ".$update["ngaytao"]
							];
							send($datagoi);
						}
						// if($_SERVER['SERVER_NAME']=="image.fmstyle.com.vn"){
						
						
							
						// }
							return  $update;

				}else{

						return 0;

				}

		}else{

				return -2;

		}

	}
	return -1;
}

function addChamcong1($json,$type){
	global $data,$table, $ip_address ;
	
	$json=json_decode($json,true);
	   $manv=$json["manv"];
 		$demkokhop=$json["demkokhop"];
		  $note=$json["note"];
		    $member_dinhdanh=$json["member_dinhdanh"];
	    $checkresult[$json["checkresult"]["numStatus"]]=$json["checkresult"]["numStatus"];
		 $checkresult["result"]=$json["checkresult"]["result"];
		 $checkresult["check"]=$json["checkresult"]["check"];
		 	$cuahangquet=$json["idcuahang"];
			$checkresult=json_encode($checkresult);
		  $ngaytao = gmdate('Y-m-d H:i:s', time() + 7*3600) ;
	   $ngayk = gmdate('Y-m-d H:i:s', time() + 7*3600-300) ;
	   $ngay = gmdate('Y-m-d', time() + 7*3600) ;
		$ip=$json["ip"];
		$ngayguilen=$json["ngaytao"];
		$linkimg=$json["linkimg"];
		file_put_contents("log.json",$linkimg);
		// if(!is_array($ngay)){
		// 	if($ngay <= gmdate('Y-m-d H:i:s', time() + 7*3600-4*60)){
		// 		return -1;
		// 	}
				
		// }else{
		// 	// $ngaytll=$ngayguilen[2]."-".$ngayguilen[1]."-".$ngayguilen[0];
		// 	// if(!is_array($ngayguilen) <=gmdate('Y-m-d H:i:s', time() + 7*3600-4*60)){
		// 	// 	return;
		// 	// }

		// }

		// if($ngayk <= gmdate('Y-m-d H:i:s', time() + 7*3600-4*60)){
		// 	return -1;
		// }
			return $manv;
	if($manv){

		$sql="select a.ID as IDNV from userac a where LOWER(a.MaNV)=LOWER('$manv')";

	

		$dong=getdong($sql);

		if ($dong["IDNV"]) {

			$sql="select a.ID,a.Ten,a.chucvu,b.loaigio,b.loaica,b.sogiolam,b.batdau,b.ketthuc,b.batdau2,b.ketthuc2,b.batdau3,b.ketthuc3,b.nghithu7,b.nghitrua,b.tangcachunhat,a.cuahang,c.Name as tencuahang,b.tinhcom from userac a left join calamviec b on a.calamviec=b.id left join cuahang c on a.cuahang=c.ID where LOWER(a.MaNV)=LOWER('$manv') limit 1 " ; 
				$tam = getdong($sql) ;

			if ($tam=='')  return ;
			$thongtin =$tam['loaigio']."*".$tam['sogiolam']."*".$tam['batdau']."*".$tam['ketthuc']."*".$tam['batdau2']."*".$tam['ketthuc2']."*".$tam['chucvu']."*".$tam['cuahang']."*".$tam['nghithu7']."*".$tam['tangcachunhat']."*".$tam['nghitrua']."*".$member_dinhdanh."*".$tam['loaica']."*".$tam['batdau3']."*".$tam['ketthuc3']."*".$tam['tinhcom']."*";
			if(!$cuahangquet){
				$cuahangquet=$tam['cuahang'];
			}
			$mangchma= taomang("cuahang","ID","macuahang");
			// check type
			if($type=="kiemhang"){
				$note.="- Kiểm hàng tại $cuahangquet - ".$mangchma[$cuahangquet];
				$cuahangquet=62;
				
			}
			// $note.="-ip:$ip_address";
			$checkresult.="####ip: $ip_address####ip: $cuahangquet - ".$mangchma[$cuahangquet];
			$sql = " select  count(ID) as solan  from $table where MaNV ='$manv' and ngaytao > '$ngay 00:00:00'   " ; 
				$lan = 1;
				$tamk = getdong($sql) ;



				// kiểm tra nửa đêm  kiểm tra nửa đêm kiểm tra nửa đêm kiểm tra nửa đêm kiểm tra nửa đêm kiểm tra nửa đêm kiểm tra nửa đêm
				$date_=date("Y-m-d",strtotime($ngaytao));
				$date_before=date("Y-m-d",strtotime ('-1 day',strtotime($date_)));
				$date_time=date("Y-m-d H:i:s",strtotime($ngaytao));
				$hours_=date("H:i:s",strtotime($ngaytao));
				
				$mid=date("Y-m-d H:i:s",strtotime($date_." 00:00:00"));
				$mor=date("Y-m-d H:i:s",strtotime($date_." 06:00:00"));	
				if($date_time >=$mid && $date_time<=$mor){
					
					$sql="select  ID,loai from  $table where  LOWER(manv)=LOWER('$manv') and  ngaytao >= '$date_before' and ngaytao <= '$date_before 23:59:59' order by ID  desc limit 1";
					$dong=getdong($sql);
					if($dong["ID"] && $dong["loai"]==1){
						$lan=2;
						$tamk['solan']=2;
						$sql = " insert into $table set manv ='$manv',IDnhanvien ='$tam[ID]',Name ='$tam[Ten]',NameN='".$tam['Ten']."',cuahang='$tam[tencuahang]',IDcuahang='$cuahangquet',note='$note',ngaytao='$date_before 23:59:59',loai='$lan',ip='$ip',thongtin='$thongtin',kiemtra='$checkresult' ";
						$tt= $data->query($sql);	

						$lan=1;
						$tamk['solan']=1;
						$sql = " insert into $table set manv ='$manv',IDnhanvien ='$tam[ID]',Name ='$tam[Ten]',NameN='".$tam['Ten']."',cuahang='$tam[tencuahang]',IDcuahang='$cuahangquet',note='$note',ngaytao='$mid',loai='$lan',ip='$ip',thongtin='$thongtin',kiemtra='$checkresult' ";

						$tt= $data->query($sql);	
					}
					// echo $sql."<br>";
				}

	// kiểm tra nửa đêm  kiểm tra nửa đêm kiểm tra nửa đêm kiểm tra nửa đêm kiểm tra nửa đêm kiểm tra nửa đêm kiểm tra nửa đêm

					if (laso($tamk['solan']) ==0) $lan = 1;

					else if (laso($tamk['solan']) ==1 ) $lan = 2;

					else if (laso($tamk['solan']) ==2 ) $lan = 1;

					else if (laso($tamk['solan']) ==3 ) $lan = 2;

					else if (laso($tamk['solan']) ==4 ) $lan = 1;

					else if (laso($tamk['solan']) ==5 ) $lan = 2;

					else if (laso($tamk['solan']) ==6 ) $lan = 1;	

					else if (laso($tamk['solan']) ==7 ) $lan = 2;

					else if (laso($tamk['solan']) ==8 ) $lan = 1;


				
				
				$sql="select ID from  $table where  LOWER(manv)=LOWER('$manv') and  ngaytao > '$ngayk' limit 1 ";

				$dong=getdong($sql);

				if(!$dong["ID"]){

						$sql = " insert into $table set manv ='$manv',IDnhanvien ='$tam[ID]',Name ='$tam[Ten]',NameN='".$tam['Ten']."',cuahang='$tam[tencuahang]',IDcuahang='$cuahangquet',note='$note',ngaytao='$ngaytao',loai='$lan',ip='$ip',thongtin='$thongtin',kiemtra='$checkresult' ";

						$tt= $data->query($sql);	
						$sql = " select  *  from $table where IDnhanvien ='$tam[ID]' and ngaytao='$ngaytao'" ;

						$update = getdong($sql) ;
						$update["ngaytao"]=date("d/m/Y h:m:s");
						$update["time"]=date("h:m:s");
						$update["checkresult"]=$json["checkresult"];
						$update["tencuahang"]=$tam["tencuahang"];
						// $dong["ID"]
						$res3 = sendApi(
         	          	 "https://image.fmstyle.com.vn/anhchamcong/nhanvienluuanhv4.php", "POST", array("manv"=>$update["ID"], "url"=>$linkimg));
						return  $update;

				}else{

						return 0;

				}

		}else{

				return -2;

		}

	}
	return -1;
}

function sendApi($url,$method="POST",$data){
	
	$curl = curl_init();

	curl_setopt_array($curl, array(
	CURLOPT_URL => $url,
	CURLOPT_RETURNTRANSFER => true,
	CURLOPT_ENCODING => '',
	CURLOPT_MAXREDIRS => 10,
	CURLOPT_TIMEOUT => 0,
	CURLOPT_FOLLOWLOCATION => true,
	CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
	CURLOPT_CUSTOMREQUEST =>$method,
	CURLOPT_POSTFIELDS =>json_encode($data),
	CURLOPT_HTTPHEADER => array(
		'Content-Type: application/json'
	),
	));

	$response = curl_exec($curl);

	curl_close($curl);
	return $response;
}



function send($datagoi){
 	
	  $idbot='5641825608';
	  $url = "https://api.telegram.org/bot".$idbot.":AAFY9dePU2NLcka1ABZew8GXHiqqx6koKDg/sendMessage?"; 
	  $response = file_get_contents("$url" .http_build_query($datagoi));
		 
	 return $response ;  
}

function thongbaoamthanh($data){
		
	$curl = curl_init();

	curl_setopt_array($curl, array(
	CURLOPT_URL => 'https://mc7.ovn.vn:9090/api?type=duplicatenote',
	CURLOPT_RETURNTRANSFER => true,
	CURLOPT_ENCODING => '',
	CURLOPT_MAXREDIRS => 10,
	CURLOPT_TIMEOUT => 0,
	CURLOPT_FOLLOWLOCATION => true,
	CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
	CURLOPT_CUSTOMREQUEST => 'POST',
	CURLOPT_POSTFIELDS =>json_encode($data),
	CURLOPT_HTTPHEADER => array(
		'Content-Type: application/json'
	),
	));

	$response = curl_exec($curl);

	curl_close($curl);
	return $response;
}
?>