<?php
// login.php

include('admin/database_connection.php');

session_start();

if(isset($_SESSION["admin_id"])) {
    header('location: admin/index.php');
} elseif (isset($_SESSION["teacher_id"])) {
    header('location: index.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Student Attendance System</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="style.css">
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <style media="screen">

  </style>
</head>
<body>


  <div class="container">
    <div class="row">
      <div class="col-md-4"></div>
      <div class="col-md-4">
        <div class="card">
          <div class="card-header">GVM'S COLLEGE OF TECHNOLOGY</div>
          <div class="card-body">
            <form method="post" id="login_form">
              <div class="form-group">
                <label>Select Role</label>
                <select name="role" id="role" class="form-control">
                  <option value="admin">Admin</option>
                  <option value="teacher">Teacher</option>
                </select>
              </div>
              <div class="form-group">
                <label>Enter Username/Email</label>
                <input type="text" name="username" id="username" class="form-control" placeholder="Username or Email" />
                <span id="error_username" class="text-danger"></span>
              </div>
              <div class="form-group">
                <label>Enter Password</label>
                <input type="password" name="password" id="password" class="form-control" placeholder="Password" />
                <span id="error_password" class="text-danger"></span>
              </div>
              <div class="form-group">
                <input type="submit" name="login" id="login" class="btn btn-info" value="Login" />
              </div>
            </form>
          </div>
        </div>
      </div>
      <div class="col-md-4"></div>
    </div>
  </div>

  <script>
  $(document).ready(function(){
    $('#login_form').on('submit', function(event){
      event.preventDefault();
      var role = $('#role').val();
      var username = $('#username').val();
      var password = $('#password').val();
      var error = 0;

      if(username == '') {
        $('#error_username').text('Username/Email is required');
        error++;
      } else {
        $('#error_username').text('');
      }

      if(password == '') {
        $('#error_password').text('Password is required');
        error++;
      } else {
        $('#error_password').text('');
      }

      if(error == 0) {
        $.ajax({
          url: "check_login.php",
          method: "POST",
          data: {role: role, username: username, password: password},
          dataType: "json",
          beforeSend: function(){
            $('#login').val('Validate...');
            $('#login').attr('disabled', 'disabled');
          },
          success: function(data) {
            if(data.success) {
              if(role == 'admin') {
                location.href = "admin/index.php";
              } else {
                location.href = "index.php";
              }
            } else {
              $('#login').val('Login');
              $('#login').attr('disabled', false);
              if(data.error_username != '') {
                $('#error_username').text(data.error_username);
              } else {
                $('#error_username').text('');
              }
              if(data.error_password != '') {
                $('#error_password').text(data.error_password);
              } else {
                $('#error_password').text('');
              }
            }
          }
        });
      }
    });
  });
  </script>
</body>
</html>