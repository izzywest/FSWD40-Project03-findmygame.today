<?php $pageTitle = 'Posts' ?>
<?php include('inc/head.php'); ?>

<?php if($_SESSION['role']=='admin'){ ?>
<div class="admin-content">
    <!-- Content Admin -->
    Posts from all users to manage (<a href="edit_post.php">edit</a>, delete)
</div>
<?php } ?>

<?php if($_SESSION['role']=='user'){ ?>
<div class="user-content">
    <!-- Content User-->
    User own posts to <a href="edit_post.php">edit</a>, delete
</div>
<?php } ?>

<?php include('inc/footer.php'); ?>