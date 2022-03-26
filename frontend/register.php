<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>register page</title>
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
#12{
  position: absolute;
  left: 50px;
  top: 200px;
}
    </style>
  </head>

  <body>
    <!--header-->
    <div class='bg'>
    <?php include 'header.php'?>
    <div class="hero-area hero-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-9 offset-lg-2 text-center">
					<div class="hero-text">
						<div class="hero-text-tablecell">
            <a href="donor_register.php" class="btn btn-secondary btn-lg " tabindex="-1" role="button" aria-disabled="true">register as donor</a>
            
            <a href="login.php" class="btn btn-secondary btn-lg " id="12" role="button" aria-disabled="true">login</a>
							</div>
             
						</div>
					</div>
          
				</div>
			</div>
		</div>
	</div>
</div>
    
  </body>
</html>