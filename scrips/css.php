<link rel="stylesheet" href="font-awesome-4.5.0/css/font-awesome.css">
<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
<link rel="stylesheet" href="style.css">

<?php 

$query="SELECT theme FROM tbl_theme WHERE id='1'";
$themes=$db->select($query);
while($result=$themes->fetch_assoc()){
    if($result['theme']=='default'){?>
<link rel="stylesheet" href="theme/default.css">
<?php }else if($result['theme']=='red'){?>
<link rel="stylesheet" href="theme/red.css">

<?php }else if($result['theme']=='deep_green'){?>

<link rel="stylesheet" href="theme/deep_green.css">

<?php }else{?>
<link rel="stylesheet" href="theme/light_green.css">

<?php }?>
<?php }?>