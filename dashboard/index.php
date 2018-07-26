<?php $pageTitle = 'Overview' ?>
<?php include('inc/head.php'); ?>

<?php if($_SESSION['role']=='admin'){ ?>
    <div class="admin-content">
        <!-- Content Admin -->
        Admin Overview boxes
    </div>
<?php } ?>

<?php if($_SESSION['role']=='user'){ ?>
<div class="user-content">
    <!-- Content User-->
    User Overview boxes
</div>
<?php } ?>

<?php include('inc/footer.php'); ?>