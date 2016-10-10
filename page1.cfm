
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="Survey Tablet">
    <meta name="author" content="">

    <title>Survey Home Page</title>

    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/custom.css" rel="stylesheet">
	<link href="../css/checkbox-x.css" rel="stylesheet">

    <!-- Bootstrap core JavaScript -->
    <script src="../js/jquery-3.1.1.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
	<script src="../js/checkbox-x.js"></script>

  </head>

  <body>
	<nav class="navbar navbar-inverse navbar-fixed-top progbar">
		<div class="container-fluid">
			<h1>SURVEY TABLET APP</h1>
		</div>
	</nav>
	
	<div class="container-fluid surv-quest">
		<h1>
            <cfoutput>
                <cfquery datasource="capstone" name="survQuestions">
                    SELECT question FROM questions
                    WHERE qid = <cfoutput>#form.qid#</cfoutput>
                </cfquery>
                #survQuestions.question#
            </cfoutput> 
        </h1><hr/>   
		<form id="survForm" name="survForm" method="post" action="submit.cfm">
            <div id="surv-btn">
                <input type="hidden" name="qid" id="qid" value=1>
                <input type="hidden" name="pid" id="pid" value=<cfoutput>#form.pid#</cfoutput>>
            
                <label for="fname">First Name</label>
                <input type="text" name="fname" id="fname">
                <label for="lname">Last Name</label>
                <input type="text" name="lname" id="lname">
                <label for="dob">DOB</label>
                <input type="text" name="dob" id="dob">
                <div class="surv-btn"> 
                    <input type="submit" class="btn btn-primary" name="submit" id="submit" value="Next">
				</div>
            </div> 
		</form>	
	</div>
		
	<nav class="navbar navbar-inverse navbar-fixed-bottom progbar">
		<div class="container-fluid">
			<div class="progbar">
				<h5>Progress (1/4)</h5>
			</div>
			<div id="myProgress">
				<div id="myBar1"></div>
			</div>
		</div>
	</nav>
  </body>
</html>
