<?php 
// $connect = new mysqli([your_hostname],[your_username],[your_password],[your_db_name]);
$connect = new mysqli('localhost','root','','db_news_sport');
if($connect){
	// echo 'succes';
}else{
	echo "connection failed";
	exit();
}