<?php
    include ('../controllers/patient_details_controler.php');
    $conn = new Chat();
?>
<?php 
    $user_id = $_SESSION['patient_id'];
    $con = $conn->connect();
    $sql="SELECT * from chat WHERE sender_id = '$user_id' OR recevier_id = '$user_id' ORDER BY message_id DESC";
    $stm=$con->prepare($sql);
    $stm->execute();
    $result=$stm->get_result();
?>
<?php while($row=$result->fetch_assoc()){ ?>
    <ul>
        <div id="chatbox_item">
            <li class="text-success">
                <?=$row['sender_name'];?>
            </li>
            <li class="text-white" id="last_message">
                <?=$row['message'];?>
            </li>
        </div>
            <li class="text-warning" >
                <?=$row['date'];?>
            </li>
    </ul>
<?php } ?>
