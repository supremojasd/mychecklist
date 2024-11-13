<?php 
//$connection = mysqli_connect("localhost","root","3496381903","midterm_checklist");

$servername = "localhost";
$username = "root";
$password = "";
$database = "midterm_checklist";

$connection = new mysqli($servername, $username, $password, $database);

if($connection->connect_error) {
    die("Connection failed: ".$connection->connect_error);
}
?>