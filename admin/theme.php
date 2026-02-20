<?php

include 'inc/header.php';
include 'inc/sidebar.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['change_theme'])) {
    $theme = $fm->validation($_POST['theme'] ?? 'default');
    $theme = mysqli_real_escape_string($db->link, $theme);

 
    $allowed = ['default', 'deep_green', 'light_green', 'red'];
    if (!in_array($theme, $allowed, true)) {
        $theme = 'default';
    }

    $update = "UPDATE tbl_theme SET theme='$theme' WHERE id=1";
    $updated = $db->update($update);

    
    if (!$updated) {
        $insert = "INSERT INTO tbl_theme (id, theme) VALUES (1, '$theme')";
        $db->insert($insert);
    }


    echo "<script>window.location = 'theme.php?msg=updated'; </script>";  
   
    exit;
}

/* ---------- Get Current Theme ---------- */
$currentTheme = 'default';
$get = $db->select("SELECT theme FROM tbl_theme WHERE id=1 LIMIT 1");
if ($get) {
    $row = $get->fetch_assoc();
    if (!empty($row['theme'])) $currentTheme = $row['theme'];
}

/* ---------- Page Includes ---------- */

?>

<div class="grid_10">
    <div class="box round first grid">
        <h2>Themes</h2>

        <div class="block">
            <?php if (isset($_GET['msg']) && $_GET['msg'] === 'updated') { ?>
            <span class="success">Theme Updated Successfully!</span>
            <?php } ?>

            <form action="" method="POST">
                <table class="form">
                    <tr>
                        <td>
                            <input type="radio" name="theme" value="default"
                                <?php echo ($currentTheme === 'default') ? 'checked' : ''; ?> /> Default
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <input type="radio" name="theme" value="deep_green"
                                <?php echo ($currentTheme === 'deep_green') ? 'checked' : ''; ?> /> Deep Green
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <input type="radio" name="theme" value="light_green"
                                <?php echo ($currentTheme === 'light_green') ? 'checked' : ''; ?> /> Light Green
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <input type="radio" name="theme" value="red"
                                <?php echo ($currentTheme === 'red') ? 'checked' : ''; ?> /> Red
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <input type="submit" name="change_theme" value="Change" />
                        </td>
                    </tr>
                </table>
            </form>

        </div>
    </div>
</div>

<?php include 'inc/footer.php'; ?>
