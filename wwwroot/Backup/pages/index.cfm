
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="Survey Tablet">
    <meta name="author" content="">

    <title>Survey Page</title>

    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap-cerulean.min.css" rel="stylesheet">
    <link href="../css/dashboard.css" rel="stylesheet">
	<link href="../css/checkbox-x.css" rel="stylesheet">

    <!-- Bootstrap core JavaScript -->
    <script src="../js/jquery-3.1.1.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
	<script src="../js/checkbox-x.js"></script>

  </head>

  <body>
	<nav class="navbar navbar-default navbar-fixed-top progbar">
		<!--<div class="container-fluid">
			<h3>Welcome to the survey!</h3>
		</div>-->
	</nav>
<div class="row text-center">
	<div class="container-fluid">
	
		<h2><strong>Welcome to the Survey!</strong></h2>
	
	<br /><br />
        <form id="survForm" name="survForm" method="post" action="page1.cfm">
	
            <div id="surv-btn"  class="form-group">
                <input type="hidden" name="qid" id="qid" value=1>
                	<label for="pid">Please verify survey code to start Survey:</label>
		
		<div class="text-center">
                	<input type="text" name="pid" id="pid" required />
		</div>
		<br /><br /><br />
                <div class="form-group">
                    <input type="submit" name="submit" id="submit" value="Start Survey" class="btn btn-danger"/>
                </div>
                
            </div>
        </form>	
	</div>
</div>	
	<nav class="navbar navbar-default navbar-fixed-bottom progbar">
	</nav>
  </body>
</html>
