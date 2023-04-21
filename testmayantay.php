<?php

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
  CURLOPT_POSTFIELDS =>json_encode(array("from"=>array("ip"=>"14.224.173.186","port"=>4370))),
  CURLOPT_HTTPHEADER => array(
    'Content-Type: application/json'
  ),
));

$response = curl_exec($curl);
// Kiểm tra lỗi cURL
if(curl_errno($curl)) {
  $error_message = curl_error($curl);
  echo "Lỗi cURL: $error_message";
}
$info = curl_getinfo($curl);
echo "<pre>";
var_dump($info);
echo "</pre>";

curl_close($curl);


var_dump($response);

?>