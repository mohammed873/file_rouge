<?php
include '../controllers/config.php';
class contact extends DB
{

    public function submit($firstname, $email, $comment){
    // $sql = "INSERT INTO `contact`(name, email, message) VALUES('$name','$email','$message')";
    // $result = $this->connect()->query($sql);
    // return $result;
  

      
    $sql = "INSERT INTO `contact` WHERE (firstname, email, comment) VALUES ('$fistname','$email','$comment')";
    
      if ($con->query($sql) === TRUE) {
          echo "<script>location.replace('home.php');</script>";
      } else {
          echo "<script>alert('There was an Error')<script>" . $sql . "<br>" . $conn->error;
      }
    
      $con->close();
    }
}
?>

     
