<?php
    session_start();
    include_once 'db_conn.php';
    if(isset($_POST['scr'])){
      score_display($conn);
    }
    function score_display($conn)
    {
      $_SESSION['user_score'] = (int)$_POST['scr'];
      $_SESSION['time'] = (int)$_POST['time'];
      $_SESSION['compilationCalls'] = (int)$_POST['compile'];
      $sql = 'insert into user_scores values('.$_SESSION['u_id'].','.$_SESSION['user_score'].','.$_SESSION['time'].','.$_SESSION['compilationCalls'].');';
      if (mysqli_query($conn, $sql)) {
         echo "New record created successfully";
       } else {
             echo "Error: " . $sql . "<br>" . mysqli_error($conn);
      }
    }
 ?>
