<?php
include '../controllers/config.php';
class Users extends DB
{
    public function sign_up($user_name, $user_email, $user_password, $user_picture, $user_status)
    {
        $sql = "INSERT INTO `users`(user_name, user_email, user_password, user_picture, user_status) VALUES('$user_name','$user_email','$user_password','$user_picture','$user_status')";
        
        $result = $this->connect()->query($sql);
        return $result;
    }

    public function signupvalidation($user_name,$user_email,$user_password,$user_confpassword,$user_picture)
    {
        if (empty($user_name)) {
            $error['user_name'] = "User name required";
            $_SESSION['alert_type']= "alert-danger";
        }
        if (!filter_var($user_email, FILTER_VALIDATE_EMAIL)) {
            $error['user_email'] = "Email adress is not valid";
        }
        if (empty($user_email)) {
            $error['user_email'] = "Email required";
        }
        if ($user_password !== $user_confpassword) {
            $error['password'] = "The two passwords don't match";
        }
        if (empty($user_password)) {
            $error['user_password'] = "Password required";
        }
        //picture validation
        if (($_FILES["user_picture"]["size"] > 2000000)){
            $error['user_picture'] = "Picture size must not acceed 2MB";
        }
        $file_extension = pathinfo($_FILES["user_picture"]["name"], PATHINFO_EXTENSION);

        $allowed_image_extension = array(
            "png",
            "jpg",
            "jpeg"
        );
        if (! in_array($file_extension, $allowed_image_extension)){
            $error['user_picture'] = "only png ,  jpg and jpeg are allowed";
        }
        if (! file_exists($_FILES["user_picture"]["tmp_name"])) {
            $error['user_picture'] = "Picture required";
        }
        
        return $error;
    }

    public function save_profile_picture()
    {
        $user_picture = $_FILES['user_picture']['name'];
        $upload = "../views/uploads/" . $user_picture;
        //storing pictures to the uploads file
        move_uploaded_file($_FILES['user_picture']['tmp_name'], $upload);
        return $user_picture;
    }

    public function loginvalidation($user_email,$user_password)
    {
        if (empty($user_email)) {
            $error['user_email'] = "user email required";
        }
        if (empty($user_password)) {
            $error['user_password'] = "password required";
        }
        return $error;
    }

}