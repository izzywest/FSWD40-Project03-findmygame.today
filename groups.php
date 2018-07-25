<?php $pageTitle='Groups'; ?>
<?php include('inc/head.php'); ?>
<?php include('config/Database.php'); ?>
<?php
//Show latest posts
        $db = new Database;

		$db->query('SELECT  *
                    FROM `groups`
                   ');
		$showPosts = $db->getResultSet();
?>

   <div id="about" class="background-image"></div> 
    <!--Content-->
    <main class="top-margin">
        <div id="posts" class="content">
            <?php foreach($showPosts as $post) : ?>
                    <div class="latest-posts post-boxes">
                        <h3><?php echo $post['GR_Name'] ?><button>contact</button></h3>
                        <small><?php echo $post['GR_Capacity']; ?></small>
                        <div class="user">
                           <img src="<?php echo $post['']; ?>" alt="">
                        </div>
                    </div>
                <?php endforeach; ?>
        </div>
        <aside>
            Display w/e data here
        </aside> 
    </main>
<?php include('inc/footer.php'); ?>