    <?php  
      include('../controllers/patient_details_controler.php');
      $conn = new Chat();
      $patient = $_SESSION['user_id'];
      $con = $conn->connect();
      $sql="SELECT * from chat WHERE sender_id = '$patient'OR recevier_id = '$patient' ORDER BY message_id DESC";
      $stm=$con->prepare($sql);
      $stm->execute();
      $result=$stm->get_result();
    ?>
    <?php while($row=$result->fetch_assoc()){ ?>
        <ul>
            <div id="chatbox_item">
                <li class="text-success" id="sender_name">
                    <?=$row['sender_name'];?>
                </li>
                <li class="text-white">
                    <?=$row['message'];?>
                </li>
            </div>
                <li class="text-warning">
                        <?=$row['date'];?>
                <li>
        </ul><br>                
    <?php } ?>
