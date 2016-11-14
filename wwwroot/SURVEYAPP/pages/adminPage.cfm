
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
    <link href="../css/bootstrap-cerulean.min.css" rel="stylesheet">
    <link href="../css/dashboard.css" rel="stylesheet">
	<link href="../css/checkbox-x.css" rel="stylesheet">
	  

    <!-- Bootstrap core JavaScript -->
    <script src="../js/jquery-3.1.1.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
	<script src="../js/checkbox-x.js"></script> 
	<script>
		function editSurveyCode(surveyCode, codeAvail){
                window.location.href = "editSurveyCode.cfm?surveyCode=" + surveyCode + "&codeAvail=" + codeAvail;
            }
	</script>
  </head>

  <body>
	<nav class="navbar navbar-default navbar-fixed-top progbar">
		<div class="container-fluid">
			<ul class="nav navbar-nav navbar-right">
				<li>
					<a href="adminLogin.cfm?logout" style="color:white;">Sign Out</a>
				</li>
			</ul>
		</div>
	</nav>
	  
	<div class="container-fluid admin-page">
		<h1>Survey Codes Availibility</h1><hr/>
                        <div class="table-responsive">
                            <table class="table table-hover" id="patientstable">
								<cfinvoke component="SURVEYAPP.classes.admin.survCodeDisp" method="getSurvCode" returnvariable="returnCodeQuery"></cfinvoke>
                                <thead>
                                    <tr>
                                        <th>Survey Code</th>
                                        <th>Uses Left</th>
                                        <th>Times Used</th>
                                    </tr>
                                </thead>
                                <tbody>
									<cfoutput query="returnCodeQuery">
										<tr>
											<td>#surveyCode#</td>
											<td>#codeAvail#</td>
											<td>#codeUsed#</td>
											<td><button class="btn btn-primary btn-xs" onclick="editSurveyCode('#surveyCode#','#codeAvail#')">EDIT</button></td>
										</tr>
									</cfoutput>
								</tbody>
                            </table>
                        </div>
	<form action="newSurveyCode.cfm">
		<p class="text-center" style="padding-top:5%;">
			<input type="submit" name="submit" id="submit" value="Create new survey code" class="btn btn-primary" style="width:40%;"/>
		</p>
	</form>
	</div>
		
	<nav class="navbar navbar-default navbar-fixed-bottom progbar">
		
	</nav>
  </body>
</html>
