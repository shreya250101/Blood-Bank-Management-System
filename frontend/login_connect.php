<?php $host = "localhost";
$port = "5432";
$dbname = "bloodbank";
$user = "postgres";
$password = "charu2001"; 
$connection_string = "host={$host} port={$port} dbname={$dbname} user={$user} password={$password} ";
$dbconn = pg_connect($connection_string);

$sql ="select * from login where login.USER_NAME ='$_POST[user]'and login.PASSWORD ='$_POST[pwd]' ";

$data = pg_query($dbconn,$sql); 
$login_check = pg_num_rows($data);
if($login_check > 0){ 
    
    echo "Login Successfully";  
    echo 'image';
    echo("<button onclick=\"location.href='home.php'\">Back to Home</button>");

}else{
    
    echo "Invalid Details";
}
session_start();
$_SESSION['user']=$_POST['user'];

?>