<?php 
 include '../lib/Database.php';
 include '../config/config.php';
 include '../helpers/Format.php';
?>
<?php 
include '../lib/Session.php';
Session:: checkLogin();
?>

<!-- I am creating objects here so that i can access it from any page, becuase header is includeded in every page -->
<?php
$db = new Database();
$fm = new Format();
?>

<!DOCTYPE html>
<head>
<meta charset="utf-8">
<title>Password Recover</title>
    <link rel="stylesheet" type="text/css" href="css/stylelogin.css" media="screen" />
</head>
<body>
<div class="container">
	<section id="content">
 <?php
 if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    $email = $fm->validation($_POST['email']);
    $email = mysqli_real_escape_string($db->link, $email);

    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        echo "<span class='error'>Invalid Email Address!!</span>";
    } else {

        $query = "SELECT id, username FROM tbl_user WHERE email='$email' LIMIT 1";
        $mailCheck = $db->select($query);

        if ($mailCheck) {

            $value = $mailCheck->fetch_assoc();
            $userid = $value['id'];
            $username = $value['username'];

            $txt = substr($email, 0, 3);
            $rand = rand(10000, 99999);
            $newpass = $txt.$rand;
            $pass = md5($newpass);

           
            $updateQuery = "UPDATE tbl_user SET password='$pass' WHERE id='$userid'";
            $updatePass = $db->update($updateQuery);

            if ($updatePass) {

                $to = $email;
                $subject = "Your Password";
                $headers = "From: webmaster@example.com\r\n";
                $message = "Your username is ".$username." and your Password is ".$newpass;

                if (mail($to, $subject, $message, $headers)) {
                    echo "<span class='success'>Please check your email for new password.</span>";
                } else {
                    echo "<span class='error'  style='color:red; >Mail not sent. Configure SMTP properly.</span>";
                }

            } else {
                echo "<span class='error'  style='color:red;>Password update failed!</span>";
            }

        } else {
            echo "<span class='error' style='color:red;'>Email does not exist!!</span>";
        }
    }
}

 ?>
 
 <form action="" method="post">
			<h1>Recover Password</h1>
			<div>
				<input type="text" placeholder="Enter your Email Address"  name="email"/>
			</div>
			 
			<div>
				<input type="submit" value="send mail"/>
			</div>
		</form><!-- form -->
		<div class="button">
		 <a href="login.php">Login </a>
		</div><!-- button -->
	</section><!-- content -->
</div><!-- container -->
</body>
</html>