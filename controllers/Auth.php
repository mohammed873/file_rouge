<?php
include('../classes/userclass.php');

$user = new Users();
$error = array();

//signning up
if (isset($_POST['signup'])) {
    $user_name = htmlspecialchars($_POST['user_name']);
    $user_email = htmlspecialchars($_POST['user_email']);
    $user_password = $_POST['user_password'];
    $user_confpassword = $_POST['user_confpassword'];
    $user_picture = $_FILES['user_picture'];
    $user_status = $_POST['user_status'];

    $error = $user->signupvalidation($user_name,$user_email, $user_password,$user_confpassword,$user_picture);

    $con = $user->connect();
    $emailQuery = "SELECT * FROM users WHERE user_email = ? LIMIT 1";
    $stm = $con->prepare($emailQuery);
    $stm->bind_param('s', $user_email);
    $stm->execute();
    $result = $stm->get_result();
    $usercount = $result->num_rows;
    if ($usercount > 0) {
       $error['user_email'] = "useremail already exists";
    }   
     
    if(count($error)=== 0){
        //hashing the password before saving the data to the database
        $user_password = password_hash($user_password, PASSWORD_DEFAULT);
        //saving the profile picture
        $user_picture = $user->save_profile_picture();     
        // registering a new user and sending the data to the database
        $user->sign_up($user_name, $user_email, $user_password, $user_picture, $user_status);
        //sending a register confirmation message to the user
        $error['message'] = "you have created ur account successfuly <a href='../views/index.php'>log in</a>";
        $_SESSION['alert_type']= "alert-success";
    }


    //logging in
    if (isset($_POST['login'])) {
        $user_email = htmlspecialchars($_POST['user_email']);
        $user_password = $_POST['user_password'];
        //validation
        $error = $user->loginvalidation($user_email,$user_password);
    }   
     

}


?>
