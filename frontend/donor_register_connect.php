<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Donor_reg</title>
</head>
<body>
    
<?php 
echo "hi";
$host = "localhost";
$port = "5432";
$dbname = "bloodbank";
$user = "postgres";
$password = "charu2001"; 
$connection_string = "host={$host} port={$port} dbname={$dbname} user={$user} password={$password} ";
$dbconn = pg_connect($connection_string);
echo "stage1";

echo "connection established";
$utente=$_POST['dname'];
$psw=$_POST['dpass'];
$query="CREATE USER {$utente} WITH password '{$psw}'";
pg_prepare($dbconn, "", $query);
$result = pg_execute($dbconn, "", []);
//
$lo="insert into LOGIN values('$_POST[donor_id]','$_POST[dname]','donor','$_POST[dpass]')";
$re = pg_query($dbconn, $lo);
if($re){
    
        echo "Data saved Successfully";
}else{
    
        echo "Soething Went Wrong";
    }

$dist_id=rand(200,300);
$place_insert="insert into DISTRICT values($dist_id,'$_POST[district]')";
$ret3 = pg_query($dbconn, $place_insert);
if($ret3){
    
        echo "Data saved Successfully";
}else{
    
        echo "Soething Went Wrong";
    }
date_default_timezone_set('Asia/Kolkata');
$date = date("Y/m/d");

$sql = "insert into donor values('$_POST[dname]','$_POST[donor_id]','$_POST[gender]','$_POST[age]',$date,'$_POST[grp]',$dist_id,0)";
$ret = pg_query($dbconn, $sql);
if($ret){
    
        echo "Data saved Successfully";
}else{
    
        echo "Soething Went Wrong";
    }
if($ret && $ret3){
    echo '<h1> SUCCESSFULL REGISTRATION </h1>';
 
    echo("<button onclick=\"location.href='login.php'\">LOGIN PAGE</button>");
   
}
else{
    echo '<h1>REGISTRATION FAILED</h1>';
}
?>   

</body>
</html>

