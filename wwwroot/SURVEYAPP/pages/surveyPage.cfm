
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
	<link href="../css/jquery-ui.min.css" rel="stylesheet">
	  

    <!-- Bootstrap core JavaScript -->
    <script src="../js/jquery-3.1.1.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
	<script src="../js/jquery.multipage.js"></script>
	<script src="../js/jquery-ui.min.js"></script>
	  <script type="text/javascript">
		$(window).ready(function() {
         
		$('#multipage').multipage({transitionFunction:transition,stateFunction: textpages});
		      $( function() {
			$( "#dob" ).datepicker({
				//format: mm/dd/yyyy,
				changeMonth: true,
				changeYear: true,
				maxDate: '@maxDate',
				yearRange: '1916:2016'
			});

		      });
		});
		
		function transition(from,to) {
			$(from).fadeOut('fast',function(){$(to).fadeIn('fast');});
		
		}
		function textpages(obj,page,pages) { 
			$(obj).html(page + ' of ' + pages);
		}

	</script>
	<script src="../js/checkbox-x.js"></script>
	
  </head>

  <body>
	<nav class="navbar navbar-default navbar-fixed-top progbar">
		<div class="container-fluid">
			<ul class="nav navbar-nav navbar-right">
				<li>
					<a href="index.cfm" style="color:white;">Exit Survey</a>
				</li>
			</ul>
		</div>
	</nav>
	  
	<cfquery datasource="surveyApp" name="survCode">
		SELECT surveyCode FROM surveyTracker
		WHERE surveyCode = '#form.surveyCode#' AND codeAvail > 0
	</cfquery>
	  
	<div class="container">
		<cfif len(survCode.surveyCode)>
		<form id="multipage" method="post" action="/SURVEYAPP/classes/api/surveyApp.cfc?method=sendSurveyData">
			<input name="surveyCode" id="surveyCode" type="hidden" value=<cfoutput>#form.surveyCode#</cfoutput>>
			<fieldset id="page_one">
			<div class="container">
					<h3>Tell us about yourself.</h3>
					<hr>
						<div class="form-group smalltext">
							<div class="form-group">
								<input class="form-control" name="fname" id="fname" placeholder="First Name" type="text" required />
							</div>
							<div class="form-group">
								<input class="form-control" name="lname" id="lname" placeholder="Last Name" type="text" required />
							</div>
							<div class="form-group">
								<input class="form-control" name="dob" id="dob" placeholder="Date of Birth" type="text" required />
							</div>
							<div class="form-group surv-btn">
								<input type="button" style="width:30%;" class="btn btn-default" onclick="return $('#multipage').nextpage();" name="next" value="Next">
							</div>
						</div>

			</div>
			</fieldset>
			<fieldset id="page_two">
			<div class="container">
				<h3>In the last two weeks, how many doses of HIV medications have you missed?</h3>
				<hr>
					<div class="form-group smalltext">
						<div class="form-group">
							<label for="missed"> Missed Doses: </label> 
						</div>	
						<div class="form-group">							
							<select class="form-control" name="q1"  id="q1">
								<option>0</option>
								<option>1</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
								<option>5</option>
								<option>6</option>
								<option>7</option>
								<option>8</option>
								<option>9</option>
								<option>10</option>	
							</select>	
						</div>
						<div class="form-group surv-btn">
							<input type="button" style="width:30%;" class="btn btn-secondary" onclick="return $('#multipage').prevpage();" name="next" value="Back">
							<input type="button" style="width:30%;" class="btn btn-default" onclick="return $('#multipage').nextpage();" name="next" value="Next">
						</div>
					</div>
				</div>
				</fieldset>
				<fieldset id="page_three">
				<div class="container">
					<h3>In the last two weeks, how many days did you miss at least one dose of an HIV medication?</h3>
					<hr>
					<div class="form-group smalltext">
						<div class="form-group">
							<label for="dob">Missed Days: </label>
						</div>
						<div class="form-group">
							<select class="form-control" name="q2" id="q2">
								<option>0</option>
								<option>1</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
								<option>5</option>
								<option>6</option>
								<option>7</option>
								<option>8</option>
								<option>9</option>
								<option>10</option>	
							</select>
							<!--<input class="form-control" name="q2" id="q2" placeholder="" type="text">-->
						</div>
						<div class="surv-btn">
							<input type="button" style="width:30%;" class="btn btn-secondary" onclick="return $('#multipage').prevpage();" name="next" value="Back">
							<input type="button" style="width:30%;" class="btn btn-default" onclick="return $('#multipage').nextpage();" name="next" value="Next">
						</div>
					</div>
				</div>
				</fieldset>
				<fieldset id="page_four">
				<div class="container">
					<h3>Please list any side-effects that occurred in the last two weeks.</h3>
					<hr> 
					<div class="form-group smalltext">
						<div class="form-group">
							<label for="dob">Side effects: </label>
						</div>
						<div class="form-group">
							<textarea class="form-control" name="q3" id="q3" placeholder="" type="text" rows="3"></textarea>
						</div>

						<div class="surv-btn">
							<input type="button" style="width:30%;" class="btn btn-secondary" onclick="return $('#multipage').prevpage();" name="next" value="Back">
							<input type="submit" style="width:30%;" class="btn btn-default" name="submit" id="submit" value="Submit">
						</div>
					</div>
				</fieldset>
			</form>
			<cfelse>
				<cfoutput>
					<h3>Survey Code doesn't exist. <a href="index.cfm">Please try other code.</a></h3>
				</cfoutput>
			</cfif>
	</div>
		
	<nav class="navbar navbar-default navbar-fixed-bottom progbar">
		<div class="container-fluid">
			<div>
				<h5></h5>
			</div>
			<div id="outerProg">
				<div id="innerProg"></div>
			</div>
		</div>
	</nav>
  </body>
</html>
