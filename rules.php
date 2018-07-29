<?php include_once 'header.php'; ?>
        <div class="container" id="rules-container" style="padding-top: 75px;">
        <div class="card w-100 bg-light">
          <div class="card-body">
            <h5 class="card-title">Rules for the challenge</h5>
                <p class="card-text">The challenge duration is of 40 mins</p>
                <p class="card-text">It has 5 challenges to get you thinking!</p>
                <p class="card-text">Once you click on the start challenge button you would be redirected to the compete section and the timer will start</p>
                <p class="card-text">DO NOT REFRESH THE PAGE THROUGHOUT THE CHALLENGE</p>
                <p class="card-text">There is a Compile/Run button to compile the code bwlow the coding window. Once compilation is finished, you will be shown how many testcases have you passed.</p>
                <p class="card-text">You can compile as many times as you want</p>
                <p class="card-text">When you click on submit and next button your score for current question will be saved and the next challenge would be displayed</p>
                <p class="card-text">Once you finish all the questions your score will be displayed</p>
                <p class="card-text">All the best! happy coding!</p>
                <p class="card-text">Thankyou for completing the challenge. Happy coding!</p>
            <a href="index.php" class="btn btn-primary">Home</a>

            <?php
              if (isset($_SESSION['u_email'])) {
                echo '<a href="challenge-page.php" id="challengeStart" class="btn btn-success" style="margin-left:25px;">Start Challenge</a>';
              } else {
                echo '<button type="button" id="loginF" class="btn btn-primary" data-toggle="modal" data-target="#login-modal" style="margin-left:25px;">Start Challenge</button>';
              }
            ?>
        </div>
      </div>
      </div>
<?php include_once 'footer.php'?>
