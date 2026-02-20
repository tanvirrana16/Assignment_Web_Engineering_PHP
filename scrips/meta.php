<?php
	//showing title dynamically
	  if (isset($_GET['pageid'])) {
		  $pageTitle = $_GET['pageid'];
		  $query = "SELECT * FROM tbl_page WHERE id = '$pageTitle'";
		  $gettitle = $db->select($query);
		  if ($gettitle) {
         while ($result = $gettitle->fetch_assoc()) {  ?>

	<title><?php echo $result['name']?> - <?php echo TITLE?></title>

	 <?php  } }  } elseif (isset($_GET['id'])) {
		  $postid = $_GET['id'];
		  $query = "SELECT * FROM tbl_post WHERE id = '$postid'";
		  $postID = $db->select($query);
		  if ($postID) {
         while ($result = $postID->fetch_assoc()) {  ?>

	<title><?php echo $result['title']?> - <?php echo TITLE?></title>

	 <?php  } }   }else{ ?>
	 
		 	<title><?php echo $fm->title() ?> - <?php echo TITLE?></title>
		 <?php } ?>		 
	
	<link rel="icon" href="images/fav.png" type="image/x-icon">
	<meta name="language" content="English">
	<meta name="description" content="It is a website about education">
	<meta name="keywords" content="blog,cms blog">
	<meta name="author" content="Rana">