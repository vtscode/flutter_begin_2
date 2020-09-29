<?php
include 'koneksi.php';
header("Content-Type: application/json; charset=UTF-8");
header('Access-Control-Allow-Origin: *');
$queryResult = $connect->query("SELECT * FROM tb_news_olahraga");
$result = array();
while($fetchData = $queryResult->fetch_assoc()){
	$result[] = $fetchData;
}
	// echo '<pre>';
	// var_dump(json_encode($result));
	// echo '</pre>';
// encoding to JSON schema
echo json_encode($result);
?>