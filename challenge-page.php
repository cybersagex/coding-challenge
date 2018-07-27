<?php session_start(); ?>

<!DOCTYPE html>
<html lang="en">
      <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

        <link rel="stylesheet" type="text/css" href="vendors/plugin/codemirror/theme/rubyblue.css">

        <title>Challenge1</title>

        <!--codemirror stylesheet file-->
        <link rel="stylesheet" type="text/css" href="vendors/plugin/codemirror/lib/codemirror.css">

        <style type="text/css">
          .navbar{
            margin-bottom: 30px;
          }

          #login-btn {
            margin-right: 25px;
          }

          #signup-btn{
            margin-right: 25px;
          }

          #bordered-textarea{
            margin-bottom: 20px;
          }
          #btn-run{
             margin-right: 30px;
          }
          #output{
            margin-top: 30px;
          }
          .list-group{
            margin-top: 30px;
          }
          .table{
            margin-bottom: 30px;
          }

          .loader {
            border: 8px solid #f3f3f3; /* Light grey */
            border-top: 8px solid #3498db; /* Blue */
            border-radius: 50%;
            margin-top: 20px;
            width: 60px;
            height: 60px;
            display: none;
            animation: spin 2s linear infinite;
          }

          @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
          }
        </style>

      </head>
      <body>
        <!--NAVBAR-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" bgcolor="black" >
            <a class="navbar-brand" href="index.php">CodeMapper</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle Navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item"><a class="nav-link" href="index.php">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="index.php">About Us</a></li>
                    <li class="nav-item"><a class="nav-link" href="challenge-page.php">Compete</a></li>
                    <li class="nav-item"><a class="nav-link" href="DocumentationSect.php">Resources</a></li>
                </ul>
                <?php
                  if (isset($_SESSION['u_email'])) {
                    echo '<button type="button" id="signout-btn" class="btn btn-success" data-toggle="modal" data-target="#logout-modal">Logout</button>';
                  }// else {
                  //   echo '<button type="button" id="login-btn" class="btn btn-primary" data-toggle="modal" data-target="#login-modal">Login</button>
                  //   <button type="button" id="signup-btn" class="btn btn-success" data-toggle="modal" data-target="#signup-modal">Sign Up</button>';
                  // }
                ?>
            </div><!--collapse-->
        </nav><!--navbar-->

        <!-- modal windows -->
        <div class="modal fade" id="logout-modal" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="logout">Logout</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                    </div><!-- modal-header -->
                    <div class="modal-body">
                        <form method="post" action="BackendFunctions/logout.php">
                            <label for="logoutQuestion">Are you sure?</label><br>
                            <button type="submit" name="yes" class="btn btn-primary">Yes</button>
                            <button type="submit" name="no" class="btn btn-primary">No</button>
                        </form><!--form login-->

                    </div><!-- modal-body -->
                </div><!--modal-content-->
            </div><!--modal-dialog-->
        </div><!--modal-->

        <div class="modal fade" id="login-modal" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="login">Login</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                    </div><!-- modal-header -->
                    <div class="modal-body">
                        <form method="post" action="BackendFunctions/login.php">
                            <div class="form-group">
                                <label for="InputEmail1">Email address</label>
                                <input type="email" class="form-control" name="email" id="loginEmail" aria-describedby="emailHelp" placeholder="Enter email">
                                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                            </div>
                            <div class="form-group">
                                <label for="InputPassword1">Password</label>
                                <input type="password" class="form-control" name="pwd" id="exampleInputPassword1" placeholder="Password">
                            </div>
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                <label class="form-check-label" for="exampleCheck1">Remember me</label>
                            </div>
                            <button type="submit" name="submit" class="btn btn-primary">Log in</button>
                        </form><!--form login-->

                    </div><!-- modal-body -->
                </div><!--modal-content-->
            </div><!--modal-dialog-->
        </div><!--modal-->

        <div class="modal fade" id="signup-modal" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="login">Sign Up</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                    </div><!-- modal-header -->
                    <div class="modal-body">
                        <form method="post" action="BackendFunctions/signup.php">
                            <div class="form-group">
                                <label for="InputFirstName">Firstname</label>
                                <input type="text" class="form-control" id="FirstName" aria-describedby="FName" name="first" placeholder="Enter your first name">
                            </div>
                            <div class="form-group">
                                <label for="InputLastName">Lastname</label>
                                <input type="text" class="form-control" id="LastName" aria-describedby="LName" name="last" placeholder="Enter your last name">
                            </div>
                            <div class="form-group">
                                <label for="InputEmail1">Email address</label>
                                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email" placeholder="Enter email">
                            </div>
                            <div class="form-group">
                                <label for="InputPassword1">Password</label>
                                <input type="password" class="form-control" id="exampleInputPassword1" name="pwd" placeholder="Password">
                            </div>
                            <div class="form-group">
                                <label for="InputPassword1">Confirm Password</label>
                                <input type="password" class="form-control" id="exampleInputPassword1" name="pwdchk" placeholder="Re-type Password">
                            </div>
                            <button type="submit" name="submit" class="btn btn-success">Sign up</button>
                        </form><!--form signup-->

                    </div><!-- modal-body -->
                </div><!--modal-content-->
            </div><!--modal-dialog-->
        </div><!--modal-->
        <!-- body -->
        <div class="container" style="padding-top:70px;">
             <p class="lead"><span id="qnumber"></span><span id="question"></span></p>

             <!--sample test cases-->
              <div class="alert alert-info" role="alert">
                <h4 class="alert-heading">Sample Test Cases</h4>
                <div id="tc">
                </div>
              </div>
        </div>
        <div class="container mt-2-lg">
          <div id="bordered-textarea" class="border border-success">

            <textarea class="codemirror-textarea"></textarea><!-- codemirror texteditor-->

            <!-- codemirror js -->
            <script type="text/javascript" src="vendors/plugin/codemirror/lib/codemirror.js"></script>
            <script type="text/javascript" src="vendors/js/jquery.slim.min.js"></script>
            <!-- changing the mode of the code-editor to python -->
            <script type="text/javascript" src="vendors/plugin/codemirror/mode/python/python.js"></script>
            <!-- adding a autoclosebrackets feature to the editor -->
            <script type="text/javascript" src="vendors/plugin/codemirror/addon/edit/closebrackets.js"></script>

          </div><!-- bordered-textarea -->
          <button id="btn-run" type="button" class="btn btn-info">Compile/Run</button><!--run/compile button-->

          <button id="btn-submit" type="button" class="btn btn-success">Submit and Next</button><!--submit and next button -->
          <div class="loader"></div>
          <!--test cases container -->
          <ul class="list-group">
            <li id="testCase1" class="list-group-item list-group-item-primary d-flex justify-content-between align-items-center">
              Test Case 1
              <span id="tc1" class="badge badge-primary badge-pill"></span>
            </li>
            <li id="testCase2" class="list-group-item list-group-item-primary d-flex justify-content-between align-items-center">
              Test Case 2
              <span id="tc2" class="badge badge-primary badge-pill"></span>
            </li>
            <li id="testCase3" class="list-group-item list-group-item-primary d-flex justify-content-between align-items-center">
              Test Case 3
              <span id="tc3" class="badge badge-primary badge-pill"></span>
            </li>
            <li id="testCase4" class="list-group-item list-group-item-primary d-flex justify-content-between align-items-center">
              Test Case 4
              <span id="tc4" class="badge badge-primary badge-pill"></span>
            </li>
            <li id="testCase5" class="list-group-item list-group-item-primary d-flex justify-content-between align-items-center">
              Test Case 5
              <span id="tc5" class="badge badge-primary badge-pill"></span>
            </li>
          </ul>

          <div id="output" class="border border-success">
              <textarea class="form-control" id="output-textarea" rows="7"></textarea>
          </div>
        </div><!-- container -->

        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <!--including jquery-->
        <script type="text/javascript" src="vendors/js/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

        <script type="text/javascript">
            //setting up the coding text-editor
            $(document).ready(function(){
                //code here....
                var code = $(".codemirror-textarea")[0];
                //testcases and expectedOutput will be fetched from database
                var testcases = new Array();
                var expectedOutput = new Array();
                //adding codemirror to textarea
                var editor = CodeMirror.fromTextArea(code,{
                    lineNumbers : true,
                    theme : "rubyblue",
                    mode : "python",
                    autoCloseBrackets : true
                });
                //on page load fetch first challenge question
                var record=1;
                $.ajax({
                  type:'POST',
                  url:'BackendFunctions/fetch_next_question.php',
                  data: {rnum:record},
                  dataType: 'json',
                  beforeSend: function(){
                    $(".loader").show();
                  },
                  complete: function(){
                    $(".loader").hide();
                  },
                  success: function(data){
                      var qno = data.qid;
                      var quest = data.question;
                      var initial = data.initial_code;
                      var sampleTC = data.sample_testcases;
                      testcases = data.testcases_inp;
                      expectedOutput = data.testcases_out;
                      $('#qnumber').html("Q<b>"+qno+".</b> ");
                      $('#question').html("<b>"+quest+"</b>");
                      $('#tc').html(sampleTC);
                      editor.getDoc().setValue("#don't touch this function call\n"+initial);
                  }
                }).fail(function(){
                  alert("could not complete");
                });
                //compile/run button function
                $("#btn-run").click(function(){
                    var userCode = editor.getValue();
                    var i;
                    for(i=0;i<testcases.length;i++)
                    {
                      userCode = userCode + "\n" + testcases[i] ;
                    }
                    $.ajax({
                    type: 'POST',
                    url: 'BackendFunctions/EvalCode/compile.php',
                    data: {code: userCode},
                    dataType: 'json',
                    beforeSend: function(){
                      $(".loader").show();
                    },
                    complete: function(){
                      $(".loader").hide();
                    },
                    success: function(data) {
                        var out=JSON.parse(data);
                        var outputs = out.output.split("\n");
                        var j;
                        var count=1;
                        for(j=0;j<outputs.length;j++)
                        {
                          if(expectedOutput[j]===outputs[j])
                          {
                            $("#testCase"+count).removeClass("list-group-item-primary");
                            $("#testCase"+count).removeClass("list-group-item-danger");
                            $("#testCase"+count).addClass("list-group-item-success");
                            $("#tc"+count).removeClass("badge-primary");
                            $("#tc"+count).removeClass("badge-danger");
                            $("#tc"+count).addClass("badge-success");
                            $("#tc"+count).html("passed");
                          }
                          else {
                            $("#testCase"+count).removeClass("list-group-item-primary");
                            $("#testCase"+count).removeClass("list-group-item-success");
                            $("#testCase"+count).addClass("list-group-item-danger");
                            $("#tc"+count).removeClass("badge-primary");
                            $("#tc"+count).removeClass("badge-success");
                            $("#tc"+count).addClass("badge-danger");
                            $("#tc"+count).html("failed");
                          }
                          count++;
                        }
                        $("textarea#output-textarea").val(data);
                    }
                    }).fail(function(){
                        alert("could not complete");
                    });

                });
                //next button function
                $("#btn-submit").click(function(){
                  record = record + 1;
                  $.ajax({
                    type:'POST',
                    url:'BackendFunctions/fetch_next_question.php',
                    data: {rnum:record},
                    dataType: 'json',
                    beforeSend: function(){
                      $(".loader").show();
                    },
                    complete: function(){
                      $(".loader").hide();
                    },
                    success: function(data){
                        var qno = data.qid;
                        var quest = data.question;
                        var initial = data.initial_code;
                        var sampleTC = data.sample_testcases;
                        testcases = data.testcases_inp;
                        expectedOutput = data.testcases_out;
                        $('#qnumber').html("<b>Q"+qno+"</b>.");
                        $('#question').html("<b>"+quest+"</b>");
                        $('#tc').html(sampleTC);
                        editor.getDoc().setValue("#don't touch this function call\n"+initial);
                        for(count=1;count<=5;count++){
                          $("#testCase"+count).removeClass("list-group-item-success");
                          $("#testCase"+count).removeClass("list-group-item-danger");
                          $("#testCase"+count).addClass("list-group-item-primary");
                          $("#tc"+count).removeClass("badge-success");
                          $("#tc"+count).removeClass("badge-danger");
                          $("#tc"+count).addClass("badge-primary");
                          $("#tc"+count).html("");
                       }
                    }
                  }).fail(function(){
                    alert("could not complete");
                  });
                });
            });

        </script>

      </body>
</html>
