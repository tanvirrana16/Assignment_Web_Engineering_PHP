<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>
<div class="grid_10">
<?php  

?>
<div class="box round first grid">
<h2>Update  Post</h2>
<?php
   if(isset($_GET['userId'])){

     $userId=$_GET['userId'];

   }
   if(isset($_POST['submit'])){
    echo "<script>window.location='userlist.php';</script>";
    exit;
}
?>

<div class="block">     
    <?php 
    $query = "SELECT * FROM tbl_user WHERE id='$userId'";
    $getUser = $db->select($query);
    if($getUser){
        while($result = $getUser->fetch_assoc()){
  
  ?>          
    <form method="POST" enctype="multipart/form-data">
    <table class="form">
        
        <tr>
            <td>
                <label>Username</label>
            </td>
            <td>
                <input type="text" name="username" value="<?php echo $result['username']; ?>"/>
            </td>
        </tr>
        <tr>
            <td>
                <label>Email</label>
            </td>
            <td>
                <input type="text" name="email" value="<?php echo $result['email']; ?>"/>
            </td>
        </tr>
        
        <tr>
            <td style="vertical-align: top; padding-top: 9px;">
                <label>Details</label>
            </td>
            <td>
                <textarea class="tinymce" name="details">
                <?php echo $result['details']; ?>
                </textarea>
            </td>
        </tr>
        
      
        <tr>
            <td></td>
            <td>
                <input type="submit" name="submit" Value="OK" />
                <!-- <input type="button" value="OK"> -->
            </td>
        </tr>
    </table>
    </form>
    <?php } } ?>
</div>
</div>
</div>


<!-- Load TinyMCE -->
<script src="js/tiny-mce/jquery.tinymce.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {
    setupTinyMCE();
    setDatePicker('date-picker');
    $('input[type="checkbox"]').fancybutton();
    $('input[type="radio"]').fancybutton();
    });
</script>
<script type="text/javascript">
    $(document).ready(function () {
    setupLeftMenu();
    setSidebarHeight();
    });
</script>
<?php include 'inc/footer.php';?>

