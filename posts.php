<?php $pageTitle='Posts'; ?>
<?php include('inc/head.php'); ?>
<?php include('config/Database.php'); ?>
<?php
//Show latest posts
        $db = new Database;

		$db->query('SELECT  `posts`.`PO_Headline`, 
                            `posts`.`FK_U_ID`,
                            `posts`.`PO_Description`,
                            `posts`.`FK_GA_ID`,
                            `posts`.`PO_DateTime`,
                            `user`.`U_ID`,
                            `user`.`U_Username`, 
                            `game`.`GA_ID`,
                            `game`.`GA_Name`
                    FROM `posts`
                    JOIN `user`
                    ON   `posts`.`FK_U_ID` = `user`.`U_ID`
                    JOIN `game`
                    ON   `posts`.`FK_GA_ID` = `game`.`GA_ID`
                    ORDER BY `posts`.`PO_DateTime` DESC
                    LIMIT 10');
		$showPosts = $db->getResultSet();
?>



   <div id="about" class="background-image"></div> 
    <!--Content-->
    <main class="top-margin">
        <div id="posts" class="content">
            <?php foreach($showPosts as $post) : ?>
                    <div class="latest-posts post-boxes">
                        <h3><?php echo $post['PO_Headline'] ?><button>contact</button></h3>
                        <small><?php echo $post['PO_Description']; ?></small>
                        <div class="user">
                            <span><strong>By:</strong> <?php echo $post['U_Username']; ?> <strong>@</strong><?php echo $post['PO_DateTime']; ?></span> <strong class="small-game"><?php echo $post['GA_Name']; ?></strong>
                        </div>
                    </div>
                <?php endforeach; ?>
        </div>
        <aside>
            Display w/e data here
        </aside> 
    </main>
<?php include('inc/footer.php'); ?>