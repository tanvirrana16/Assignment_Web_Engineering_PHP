

<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>





        <div class="grid_10">
		
            <div class="box round first grid">
                <h2>Change Password</h2>

                <?php
            if (isset($_POST['submit'])) {

                $oldpassword = $fm->validation(md5($_POST['oldpassword']));
                $newpassword = $fm->validation(md5($_POST['newpassword']));

                $oldpassword = mysqli_real_escape_string($db->link, $oldpassword);
                $newpassword = mysqli_real_escape_string($db->link, $newpassword);

                $userId = Session::get("userId");

                if (empty($oldpassword) || empty($newpassword)) {
                    echo "<span style='color:red;font-size:16px;font-weight:bold;'>Field must not be empty!</span>";
                } else {

                    
                    $checkQuery = "SELECT id FROM tbl_user WHERE id='$userId' AND password='$oldpassword' LIMIT 1";
                    $checkResult = $db->select($checkQuery);

                    if ($checkResult) {
                        // Update new password
                        $updateQuery = "UPDATE tbl_user SET password='$newpassword' WHERE id='$userId'";
                        $updated = $db->update($updateQuery);

                        if ($updated) {
                            echo "<span style='color:green;font-size:20px;font-weight:bold;'>Password Updated Successfully!</span>";
                        } else {
                            echo "<span style='color:red;font-size:20px;font-weight:bold;'>Password Not Updated!</span>";
                        }
                    } else {
                        echo "<span style='color:red;font-size:20px;font-weight:bold;'>Old Password Doesn't Match!</span>";
                    }
                }
            }
            ?>
                <div class="block"> 
                    
                                  
                 <form  method="post">
                    <table class="form">					
                        <tr>
                            <td>
                                <label>Old Password</label>
                            </td>
                            <td>
                                <input type="password" placeholder="Enter Old Password..."  name="oldpassword" class="medium" />
                            </td>
                        </tr>
						 <tr>
                            <td>
                                <label>New Password</label>
                            </td>
                            <td>
                                <input type="password" placeholder="Enter New Password..." name="newpassword" class="medium" />
                            </td>
                        </tr>
						 
						
						 <tr>
                            <td>
                            </td>
                            <td>
                                <input type="submit" name="submit" Value="Update" />
                            </td>
                        </tr>
                    </table>
                    </form>
                </div>
            </div>
        </div>
   
<?php include 'inc/footer.php';?>