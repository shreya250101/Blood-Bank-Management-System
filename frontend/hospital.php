<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Hospital</title>
    <style>
body {font-family: Arial, Helvetica, sans-serif;}
body, html {
  height: 100%;
}

.bg {
  /* The image used */
  background-image: url('images/logo.jpeg');

  /* Full height */
  height: 100%;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
  background-color: #fefefe;
  margin: auto;
  padding: 20px;
  border: 1px solid #888;
  width: 80%;
}


/* The Close Button */
.close {
  color: #aaaaaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
.below{

}
}
table, th, td {
  border: 1px solid black;
}
</style>
  </head>
  
<body>
    
<div class='bg'>

<?php include 'header1.php'?>
<?php
$host = "localhost";
$port = "5432";
$dbname = "bloodbank";
$user = "postgres";
$password = "charu2001"; 
$connection_string = "host={$host} port={$port} dbname={$dbname} user={$user} password={$password} ";
$dbconn = pg_connect($connection_string);
session_start();

$utente= $_SESSION['user'];

$query = "SELECT USER_ID FROM login where LOGIN.USER_NAME='$_SESSION[user]' and LOGIN.JOB='admin'";
$rs = pg_query($dbconn, $query) or die("Cannot execute query: $query\n");
$row = pg_fetch_row($rs);
$admin_id=$row[0];
echo $_SESSION['user'];



      ?>


 
<div>
<h1>Display donors and recipients who live in the same district and have the same bloodgroup:</h1>
<form action='' method=post> 
    <input type="hidden" name="new" value="4" />
   
    <input type="submit"  />
  </form></div>
  
    <?php 
    if(isset($_POST['new']) && $_POST['new']=='4'){

$lo="SELECT r_id, r_name, r_bloodGroup, did, dName, db_grp
FROM Recipient INNER JOIN donor
ON donor.db_grp = Recipient.r_bloodGroup WHERE
donor.dis_id = Recipient.dis_id";
$count=0;
$re = pg_query($dbconn, $lo);
  if($re){
    
    echo "<table>"; // start a table tag in the HTML
    echo "<tr><td>id</td><td>name</td><td>bloodgroup</td><td>donor_id</td><td>donor</td><td>donor group</td></tr>";
    while($row = pg_fetch_row($re)){   //Creates a loop to loop through results
    echo "<tr><td>" . $row[0] . "</td><td>" . $row[1] . "</td><td>" . $row[2] . "</td><td>" . $row[3] . "</td><td>" . $row[4] . "</td><td>" . $row[5] . "</td></tr>";  //$row['index'] the index here is a field name
    }
    
    echo "</table>";
   


  
  }
  else{
  
    echo '<script>alert("ERROR")</script>';
}}?>
<div>

<h1>Display list of hospitals having blood group blood samples</h1>
<form action='' method=post> 
    <input type="hidden" name="new" value="5" />
    <label class="fieldlabels">blood group</label> <input type="text" name="grp"  />
    <input type="submit"  />
  </form></div>
  <?php
  if(isset($_POST['new']) && $_POST['new']=='5'){
  $lo=" SELECT h_id, Hname from HOSPITAL WHERE hb_grp = '$_POST[grp]'";
  $count=0;
  $re = pg_query($dbconn, $lo);
    if($re){
     
    
      echo "<table>"; // start a table tag in the HTML
      echo "<tr><td>id</td><td>hospital name</td></tr>";
      while($row = pg_fetch_row($re)){   //Creates a loop to loop through results
      echo "<tr><td>" . $row[0] . "</td><td>" . $row[1] . "</td></tr>";  //$row['index'] the index here is a field name
      }
      
      echo "</table>";
      }
      else{
  
      echo "Soething Went Wrong";
  }}?>
  <div>
 <h1>Display Recipients whose required blood group is available in the blood sample and have their statues checked by a disease recognizer:	</h1>
<form action='' method=post> 
    <input type="hidden" name="new" value="6" />
    <input type="submit"  />
  </form></div>

  <?php
  if(isset($_POST['new']) && $_POST['new']=='6'){
  $lo="SELECT rs_id, r_name, r_bloodGroup FROM RECIPIENT as R WHERE EXISTS
  (SELECT * FROM Blood_sample as B WHERE
  B.blood_group = R. r_bloodGroup and B.stat = 'Yes');
  "; 
  
  
  $re = pg_query($dbconn, $lo);
    if($re){
     
      echo "<table border='1'>"; // start a table tag in the HTML
      echo "<tr><td>ID</td><td>NAME</td><td>BLOOD GROUP</td></tr>";
      while($row = pg_fetch_row($re)){   //Creates a loop to loop through results
      echo "<tr><td>{$row[0]}</td><td>{$row[1]}</td><td>{$row[2]}</td></tr>";  //$row['index'] the index here is a field name
      }
      
      echo "</table>";
      
    }
   
  }
    
    ?>
    </div>

  </body>
</html>
