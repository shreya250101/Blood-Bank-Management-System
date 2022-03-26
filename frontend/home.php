<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- title -->
	<title>Blood Bank</title>

	<!-- google font -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">

	<!-- bootstrap -->
	<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">

	<!-- main style -->
	<link rel="stylesheet" href="assets/css/main.css">
	<style>
 .bg {
  /* The image used */
  background-image: url('images/logo11.png');

  /* Full height */
  height: 100%;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
	</style>

</head>
<body>
	
	<!--PreLoader--
    <div class="loader">
        <div class="loader-inner">
            <div class="circle"></div>
        </div>
    </div>-->
    <!--PreLoader Ends-->
	
	<!-- header -->
	<div class="top-header-area" id="sticker">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-sm-12 text-center">
					<div class="main-menu-wrap">
						<!-- logo -->
						<div class="site-logo">
							<a href="home.php">
								<img src="images\" alt="">
							</a>
						</div>
						<!-- logo -->

						<!-- menu start -->
						<nav class="main-menu">
							<ul>
								<li id="aaa"><a href="admin.php">admin</a></li>
								<li><a href="donor.php">donor</a></li>
								<li><a href="hospital.php">hospital</a></li>
								
							</ul>
						</nav>
						<!-- menu end -->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end header -->
	
	<?php
$host = "localhost";
$port = "5432";
$dbname = "bloodbank";
$user = "postgres";
$password = "charu2001"; 
$connection_string = "host={$host} port={$port} dbname={$dbname} user={$user} password={$password} ";
$dbconn = pg_connect($connection_string);
?>
	<!-- Body content -->
	<div class='bg'>
	<div class="hero-area hero-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-9 offset-lg-2 text-center">
					<div class="hero-text">
						<div class="hero-text-tablecell">
							<h1>Welcome to Blood Bank </h1>
							<form action='' method="post">
        <input type="submit" name="button1"
                class="button" value="Hospital list" />
          
        <input type="submit" name="button2"
                class="button" value="No of count" />
				
    </form>
	<?php
      
	  if(isset($_POST['button1'])) {
		$lo="SELECT hb_grp,hname FROM hospital limit 10"; 
		
		
		$re = pg_query($dbconn, $lo);
		  if($re){
		   
			echo "<table border='1' style='background-color:#A4A4A4;'>"; // start a table tag in the HTML
			echo "<tr><td>Blood group available</td><td>hospital name</td></tr>";
			while($row = pg_fetch_row($re)){   //Creates a loop to loop through results
			echo "<tr><td>{$row[0]}</td><td>{$row[1]}</td></tr>";  //$row['index'] the index here is a field name
			}
			
			echo "</table>";
			
		  }
		 
	  }
	  if(isset($_POST['button2'])) {
		$lo="SELECT count(*)FROM RECIPIENT ;
		"; 
		
		
		$re = pg_query($dbconn, $lo);
		  if($re){
		   
			echo "<table border='1' >"; // start a table tag in the HTML
			echo "<tr><td>count</td></tr>";
			while($row = pg_fetch_row($re)){   //Creates a loop to loop through results
			echo "<tr><td>{$row[0]}</td></tr>";  //$row['index'] the index here is a field name
			}
			
			echo "</table>";
			
		  }
		 
		
	  }
  ?>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Body content -->

	<!-- footer -->
	<div class="footer-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<div class="footer-box about-widget">
						<h2 class="widget-title">About us</h2>
						<ul id="#aaaaa">
							<li>Shreya V - PES1UG19CS463</li>
							<li> Shreya S- PES1UG19CS462</li>
							<li>Samhitha - PES1UG19CS425</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end footer -->

	<!-- jquery -->
	<script src="assets/js/jquery-1.11.3.min.js"></script>
	<!-- bootstrap -->
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
	<!-- count down -->
	<script src="assets/js/jquery.countdown.js"></script>
	<!-- isotope -->
	<script src="assets/js/jquery.isotope-3.0.6.min.js"></script>
	<!-- waypoints -->
	<script src="assets/js/waypoints.js"></script>
	<!-- owl carousel -->
	<script src="assets/js/owl.carousel.min.js"></script>
	<!-- magnific popup -->
	<script src="assets/js/jquery.magnific-popup.min.js"></script>
	<!-- mean menu -->
	<script src="assets/js/jquery.meanmenu.min.js"></script>
	<!-- sticker js -->
	<script src="assets/js/sticker.js"></script>
	<!-- main js -->
	<script src="assets/js/main.js"></script>

</body>
</html>