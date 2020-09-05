<?php

include_once ('../classes/contact_class.php');
$contact = new Contact();

$error  = array();
$firstname = '';
$email = '';

/**************************** sending contact message  ******************************/
if(isset($_POST['contact_message'])){
	$user_id = $_POST["user_id"];
	$firstname = $_POST["firstname"];
	$email = $_POST["email"];
	$comment = $_POST["comment"];
    // validing the form before submitting
	$error = $contact->contact_validation($firstname,$email,$comment,$error);
	
	// checking the there no errors before saving the data to the DB
	if(count($error)== 0){
       //saving the data into the DB
	   $contact->Contact_Message($user_id,$firstname,$email,$comment);
	   //sending a register confirmation message to the user
	   $_SESSION['message'] = "Your message has been sent successfuly";
	   //empty inputs field after submiting the form
	   $firstname = '';
       $email = '';
	}	
}

?>  
