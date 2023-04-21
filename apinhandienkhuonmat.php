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
include($root_path . "biensession.php");
include($root_path . "includes/config.php");
// include($root_path . "includes/removeUnicode.php");
// include($root_path . "includes/class.paging.php");
include($root_path . "includes/class.mysql.php");
include($root_path . "includes/function.php");

include($root_path."chamcongapi.php");

$data = new class_mysql();

$data->config();

$data->access();

$json = file_get_contents('php://input');
$table="nhanviendilam";
$type=$_REQUEST["type"];
$res=array("code"=>200,"message"=>"Đã chấm công!","data"=>"");
// echo json_encode($res,JSON_HEX_TAG | JSON_HEX_APOS | JSON_HEX_QUOT | JSON_HEX_AMP | JSON_UNESCAPED_UNICODE);

// return;
switch ($type) {
	case 'test':
		$res=array("code"=>200,"message"=>"Đã chấm công test!","data"=>$dt);
		break;
	case 'vantaychamcong':
		
		//  $table="nhanviendlam";
		file_put_contents("log_vantay.json",$json);
	
		$dt=addChamcong2($json,$type);
			if($dt==0){
				
				$json=json_decode($json,true);
				$r=thongbaoamthanh(array("from"=>array("ip"=>$json["ip"],"port"=>$json["port"])));
				$res=array("code"=>203,"message"=>"Đã chấm công cách đây ít phút!","data"=>$r);
		
			}
			else if($dt==-1){
			
				$res=array("code"=>201,"message"=>"Lỗi vui lòng thử lại!","result"=>$dt,"data"=>json_decode($json ,true));
			
			}	else if($dt==-2){
				$res=array("code"=>204,"message"=>"Không tìm thấy nhân viên!","data"=>[]);
			}else{

				$res=array("code"=>200,"message"=>"Đã chấm công!","data"=>$dt);

			}
		break;
	case 'overtime':
		$table="nhanvientangca";
		//  $table="nhanviendlam";
		$dt=addChamcong1($json,$type);
			if($dt==0){
	
				$res=array("code"=>203,"message"=>"Đã chấm công cách đây ít phút!","data"=>[]);
			
			}
			else if($dt==-1){
			
				$res=array("code"=>201,"message"=>"Lỗi vui lòng thử lại!","result"=>$dt,"data"=>json_decode($json ,true));
			
			}	else if($dt==-2){
				$res=array("code"=>204,"message"=>"Không tìm thấy nhân viên!","data"=>[]);
			}else{

				$res=array("code"=>200,"message"=>"Đã chấm công!","data"=>$dt);

			}
		break;
	case 'kiemhang':
		// $table="nhanvientangca";
			$dt=addChamcong1($json,$type);
			
			if($dt==0){
	
				$res=array("code"=>203,"message"=>"Đã chấm công cách đây ít phút!","data"=>[]);
			
			}
			else if($dt==-1){
			
				$res=array("code"=>201,"message"=>"Lỗi vui lòng thử lại!","result"=>$dt,"data"=>json_decode($json ,true));
			
			}	else if($dt==-2){
				$res=array("code"=>204,"message"=>"Không tìm thấy nhân viên!","data"=>[]);
			}else{

				$res=array("code"=>200,"message"=>"Đã chấm công!","data"=>$dt);

			}
			// $res=array("code"=>200,"message"=>"kiểm hàng!","data"=>"");
		break;
	case '1':
		$dt=addChamcong1($json,$type);
		
			if($dt==0){
				$res=array("code"=>203,"message"=>"Đã chấm công cách đây ít phút!","data"=>[]);
			}
			else if($dt==-1){
			
				$res=array("code"=>201,"message"=>"Lỗi vui lòng thử lại!","result"=>$dt,"data"=>json_decode($json ,true));
			
			}	else if($dt==-2){
				$res=array("code"=>204,"message"=>"Không tìm thấy nhân viên!","data"=>[]);
			}else{

				$res=array("code"=>200,"message"=>"Đã chấm công!","data"=>$dt);

			}
			// $res=array("code"=>201,"message"=>"Lỗi vui lòng thử lại!","result"=>$dt);
		break;
	default:
		$dt=addChamcong1($json,$type);
			if($dt==0){
				$res=array("code"=>203,"message"=>"Đã chấm công cách đây ít phút!","data"=>[]);
			}
			else if($dt==-1){
			
				$res=array("code"=>201,"message"=>"Lỗi vui lòng thử lại!","result"=>$dt,"data"=>json_decode($json ,true));
			
			}	else if($dt==-2){
				$res=array("code"=>204,"message"=>"Không tìm thấy nhân viên!","data"=>[]);
			}else{

				$res=array("code"=>200,"message"=>"Đã chấm công!","data"=>$dt);

			}
			// $res=array("code"=>201,"message"=>"Lỗi vui lòng thử lại!","result"=>$dt);
		
		break;
}
// if($type && $type=="overtime"){
// 	$table="nhanvientangca";
// }

	

 

echo json_encode($res,JSON_HEX_TAG | JSON_HEX_APOS | JSON_HEX_QUOT | JSON_HEX_AMP | JSON_UNESCAPED_UNICODE);

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
					
					$sql="select  ID,loai from  $table where  LOWER(manv)=LOWER('$manv') and  ngaytao >= '$date_before' and ngaytao <= '$date_before 25:59:59' order by ID  desc limit 1";
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
					echo $sql."<br>";
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
function addChamcong2($json,$type){
	global $data;
	$table="nhanviendilam";
	
	$json=json_decode($json,true);
	$user_id=$json["user_id"];
 		$timestamp=$json["timestamp"];
		  $ngaytao = gmdate('Y-m-d  H:i:s', $json["timestamp"]+ 7*3600) ;
		
		 // $note=$json["note"];
		//$member_dinhdanh=$json["member_dinhdanh"];
	    //$checkresult[$json["checkresult"]["numStatus"]]=$json["checkresult"]["numStatus"];
		// $checkresult["result"]=$json["checkresult"]["result"];
		// $checkresult["check"]=$json["checkresult"]["check"];
		 	$cuahangquet=$json["idch"];
			//$checkresult=json_encode($checkresult);
		  //$ngaytao = gmdate('Y-m-d H:i:s', time() + 7*3600) ;
	  	$ngayk = gmdate('Y-m-d H:i:s', $json["timestamp"]+ 7*3600-300) ;


		
		 $ngay = gmdate('Y-m-d',$json["timestamp"]) ;
		$ip=$json["ip"].":".$json["port"];
	  
	if($user_id){

		$sql="select a.ID as IDNV,MaNV,Ten from userac a where a.ID=$user_id";

		

		$dong=getdong($sql);

		if ($dong["IDNV"]) {
			$manv=$dong["MaNV"];
			$note="";
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

						$sql = " insert into $table set manv ='$manv',IDnhanvien ='$tam[ID]',Name ='$tam[Ten]',NameN='".$tam['Ten']."',cuahang='$tam[tencuahang]',IDcuahang='$cuahangquet',note='$note',ngaytao='$ngaytao',loai='$lan',ip='$json[ip]',thongtin='$thongtin',kiemtra='$checkresult' ";
						$tt= $data->query($sql);	
						$sql = " select  *  from $table where IDnhanvien ='$tam[ID]' and ngaytao='$ngaytao'" ;
						$update = getdong($sql) ;
						$update["ngaytao"]=date("d/m/Y h:m:s");
						$update["time"]=date("h:m:s");
						$update["checkresult"]=$json["checkresult"];
						$update["tencuahang"]=$tam["tencuahang"];
						// $dong["ID"]
						// $res3 = sendApi(
         	          	//  "https://image.fmstyle.com.vn/anhchamcong/nhanvienluuanhv4.php", "POST", array("manv"=>$update["ID"], "url"=>$linkimg));
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

function thongbaoamthanh($body){
		
	$curl = curl_init();
// '{
	// 	"from": {"ip": "14.224.173.186", "port": "4370"}
	
	// }'
	// return $body;
	curl_setopt_array($curl, array(
	CURLOPT_URL => 'https://mc7.ovn.vn:9090/api?type=duplicatenote',
	CURLOPT_RETURNTRANSFER => true,
	CURLOPT_ENCODING => '',
	CURLOPT_MAXREDIRS => 10,
	CURLOPT_TIMEOUT => 0,
	CURLOPT_FOLLOWLOCATION => true,
	CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
	CURLOPT_CUSTOMREQUEST => 'POST',
	CURLOPT_POSTFIELDS =>json_encode($body),
	CURLOPT_HTTPHEADER => array(
		'Content-Type: application/json',
		'Cookie: session=eyJyZWNlaXZlX2NvdW50IjoyNH0.ZBk4bQ.6H7C7kTxE73wavMP5dRaB7ye6cw'
	),
	));

	$response = curl_exec($curl);

	curl_close($curl);
	return $response;
}
?>