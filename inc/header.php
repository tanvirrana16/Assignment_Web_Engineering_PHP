<?php 
 include 'lib/Database.php';
 include 'config/config.php';
 include 'helpers/Format.php';
?>
<!-- I am creating objects here so that i can access it from any page, becuase header is includeded in every page -->
<?php
$db = new Database();
$fm = new Format();
?>
<!DOCTYPE html>
<html>
<head>
	x
	<!-- change korte hobe -->
	<?php include 'scrips/meta.php' ; ?>
	<?php include 'scrips/css.php' ; ?>
	<?php include 'scrips/js.php' ; ?>


</head>

<body>
	<div class="headersection templete clear">
<?php
 $query = "SELECT * FROM title_slogan WHERE id = 1";
 $getData = $db->select($query);
 if ($getData) {
	while ($result = $getData->fetch_assoc()) {
?>		
	<a href="#">
		<div class="logo">
			<img src="admin/<?php echo $result['logo'] ?>" alt="Logo"/>
			<h2><?php echo $result['title'] ?></h2>
			<p><?php echo $result['slogan'] ?></p>
		</div>
	</a>

<?php } }?>
	<div class="social clear">
<?php
$query = "SELECT * FROM tbl_social WHERE id = 1";
$getSocial = $db->select($query);
if ($getSocial) {
	while ($data = $getSocial->fetch_assoc()) {
?>
<div class="icon clear">
<a href="<?php echo $data['fb']?>" target="_blank"><i class="fa fa-facebook"></i></a>
<a href="<?php echo $data['tw']?>" target="_blank"><i class="fa fa-twitter"></i></a>
<a href="<?php echo $data['ln']?>" target="_blank"><i class="fa fa-linkedin"></i></a>
<a href="<?php echo $data['gp']?>" target="_blank"><i class="fa fa-google-plus"></i></a>
</div>
<?php } }?>

		<div class="searchbtn clear">
		<form action="search.php" method="get">
			<input type="text" name="search" placeholder="Search keyword..."/>
			<input type="submit" name="submit" value="Search"/>
		</form>
		</div>
	</div>
</div>
<div class="navsection templete">
	<?php //	highlight current page or menu item	
	  $path = $_SERVER['SCRIPT_FILENAME'];
	  $currentPage = basename($path,  '.php');
	?>
<ul>
	<li><a
	 <?php  if ($currentPage == 'index') {	echo 'id="active"';}?>
	 	href="index.php">Home</a></li>
	<?php
		$query = "SELECT * FROM tbl_page";
		$pages = $db->select($query);
		if ($pages) {
		while ($result = $pages->fetch_assoc()){   ?>  
		<li><a
		<?php
//	highlight current page or menu item		 
  if (isset($_GET['pageid']) && $_GET['pageid'] == $result['id']) {
	 echo 'id="active"';
  }
	?>
		href="page.php?pageid=<?php echo $result['id']?>"><?php echo $result['name']?></a></li>

		<?php }  } ?>
	<li><a
	<?php  if ($currentPage == 'contact') {	echo 'id="active"';}?>
	href="contact.php">Contact</a></li>
</ul>
</div>
