<?php
// check_login.php

include('admin/database_connection.php');

session_start();

$role = '';
$username = '';
$password = '';
$error_username = '';
$error_password = '';
$error = 0;

if(empty($_POST["username"])) {
    $error_username = 'Username/Email is required';
    $error++;
} else {
    $username = $_POST["username"];
}

if(empty($_POST["password"])) {
    $error_password = 'Password is required';
    $error++;
} else {
    $password = $_POST["password"];
}

if($error == 0) {
    $role = $_POST["role"];
    if($role == 'admin') {
        $query = "SELECT * FROM tbl_admin WHERE admin_user_name = '".$username."'";
    } else {
        $query = "SELECT * FROM tbl_teacher WHERE teacher_emailid = '".$username."'";
    }

    $statement = $connect->prepare($query);
    if($statement->execute()) {
        $total_row = $statement->rowCount();
        if($total_row > 0) {
            $result = $statement->fetchAll();
            foreach($result as $row) {
                if($role == 'admin') {
                    if(password_verify($password, $row["admin_password"])) {
                        $_SESSION["admin_id"] = $row["admin_id"];
                    } else {
                        $error_password = "Wrong Password";
                        $error++;
                    }
                } else {
                    if($password === $row["teacher_password"]) {
                        $_SESSION["teacher_id"] = $row["teacher_id"];
                    }else {
                        $error_password = "Wrong Password";
                        $error++;
                    }
                }
            }
        }
    }
}

if($error > 0) {
    $output = array(
        'error' => true,
        'error_username' => $error_username,
        'error_password' => $error_password
    );
} else {
    $output = array(
        'success' => true
    );
}

echo json_encode($output);
?>