<?php
include('../classes/contact_class.php');

$user = new contact();

//contact and send message 
  if(isset($_POST['submit'])){
  $fistname = htmlspecialchars($_POST['fistname']);
  $email = htmlspecialchars($_POST['email']);
  $comment =htmlspecialchars($_POST['comment']);

 


  header('location:home.php');

                } 
    else {
       echo "incorect";
    }            

        
            



?> 