<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="EMR User Home Page">
    <meta name="author" content="Snarna">

    <title>Client Home Page</title>

    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap-cerulean.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../css/dashboard.css" rel="stylesheet">

    <!-- Bootstrap core JavaScript -->
    <script src="../js/jquery-3.1.1.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>

    <!-- My Script -->
    <script>
        function loalModalPreview() {

            //Get info from datatable row
            var $surveyId = $($(this).children().get(0)).html();

            $.ajax({
              url: "../classes/surveys/modalpreview.cfc?method=loadmodalpreview",
              data: {
                surveyId : $surveyId
              },
              success:function(data){
                console.log("I've received:" + data);
              },
              error:function(error){
                console.log("Error!:" + error);
              }

            });

            //Put in modal
            $("#modalid").html($surveyId);

            //Show modal
            $("#sModal").modal('show');
        }
        $(document).ready(function() {
            $("#surveystable tbody tr").click(loalModalPreview);
        });
    </script>
</head>

<body>

    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
                <a class="navbar-brand" href="#">EMR Home</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Profile</a></li>
                    <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Welcome, XXXX <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="#"><i class="icon-envelope"></i>Support</a></li>
                            <li class="divider"></li>
                            <li><a href="#"><i class="icon-off"></i>Logout</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container-fluid">
        <div class="col-sm-3 col-md-2 sidebar collapse in" id="sidebar">
            <ul class="nav nav-sidebar">
                <li class="active"><a href="../pages/surveys.html">Surveys<span class="sr-only">(current)</span></a></li>
                <li><a href="../pages/analytics.html">Analytics</a></li>
                <li><a href="#">More More!</a></li>
            </ul>
            <ul class="nav nav-sidebar">
                <li><a href="">More Options</a></li>
                <li><a href="">More Options 2</a></li>
                <li><a href="">More Options 3</a></li>
            </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <h1 class="page-header">Surveys</h1>
            <div class="row">
                <div class="col-sm-12">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="ID / Name">
                        <span class="input-group-btn">
                          <button class="btn btn-default" type="button">Search</button>
                        </span>
                    </div>
                </div>
            </div>

			
			

			
			
			
            <div class="row">
                <div class="table-responsive">
                    <table class="table table-striped" id="surveystable">
					<cfinvoke component="classes.surveys.surveyDatacfc" method="insertSurveyData" returnvariable="returnSurveyData"></cfinvoke>
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>First Name</th>
                                <th>Last Name</th>
                                <th>DOB</th>
                                <th>Date Taken</th>
                            </tr>
                        </thead>
                        <tbody>
							<cfoutput query="returnSurveyData">
                            <tr>
                                <td>#id#</td>
                                <td>#fname#</td>
                                <td>#lname#</td>
                                <td>#dob#</td>
                                <td>XXX</td>
                            </tr>
							</cfoutput>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-5">
                    Showing 1 to 10 of XXX survey entries
                </div>
                <div class="col-sm-7">
                    <ul class="pagination">
                        <li>
                            <a href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                        <li class="active"><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li>
                            <a href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</body>

<!-- Modal For Survey-->
<div id="sModal" class="modal fade" role="dialog">
    <div class="modal-dialog modal-lg">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title" id="modal-title">Survey ID: <span id="modalid"></span></h4>
            </div>
            <div class="modal-body" id="modal-body">
                <p>Details about this survey</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>

</html>
