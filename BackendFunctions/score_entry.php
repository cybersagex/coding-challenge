<?php
    session_start();
    include_once 'db_conn.php';
    if(isset($_POST['scr'])){
      score_display($conn);
      $_SESSION['user_score'] = $_POST['scr'];
    }
    function score_display($conn)
    {
      $scoreFinal = (int)$_POST['scr'];
      $sql = 'insert into user_scores(user_id,score) values('.$_SESSION['u_id'].','.$scoreFinal.');';
      if (mysqli_query($conn, $sql)) {
         echo "New record created successfully";
       } else {
             echo "Error: " . $sql . "<br>" . mysqli_error($conn);
      }
    }
 ?>
