<?php $pageTitle='Games'; ?>
<?php include('inc/head.php'); ?>
<?php include('config/Database.php'); ?>
<?php 
	// DATABASE CONNECTION
	$db = new Database;
		// SHOW GAMES
		$db->query('SELECT  `game`.`GA_Image`,
                            `game`.`GA_Name`,
                            `game`.`GA_Genre`,
                            `game`.`GA_Name`,
                            `game`.`GA_Description`,
                            `platform`.`PL_NAME`
                    FROM `game`
                    JOIN `platform`
                    ON `game`.`FK_PL_ID` = `platform`.`PL_ID` ');
		$show = $db->getResultSet();

        //Show latest posts
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
   <h1>Games</h1>
    <!--Content-->
    <main class="top-margin">
        <div id="game-container" class="content">   
            <!-- FOREACH TO LOOP OVER USER ENTRIES-->
            <?php foreach($show as $game) : ?>
                <div class="game-box">
                    <div class="game-image">
                        <img src="<?php echo $game['GA_Image']; ?>" alt="<?php echo $game['GA_Name']; ?>">
                        <div class="game-info">
                            <div class="game-platform"><strong>Platform:</strong> <?php echo $game['PL_NAME']; ?></div>
                            <div class="game-platform"><strong>Genre:</strong> <?php echo $game['GA_Genre']; ?></div>
                        </div>
                    </div>
                    <div class="game-meta" id="<?php echo $game['GA_Name']; ?>">
                        <h1><?php echo $game['GA_Name']; ?></h1>
                        <?php echo $game['GA_Description']; ?>
                        <button class="find-group">Find group</button>
                    </div>
                </div>
            <?php endforeach; ?>
            <!-- END FOREACH-->
        </div>

        <aside>
            <h1>latest Posts</h1>
                <?php foreach($showPosts as $post) : ?>
                    <div class="latest-posts">
                        <h3><?php echo $post['PO_Headline'] ?><button>contact</button></h3>
                        <small><?php echo $post['PO_Description']; ?></small>
                        <hr>
                        <div class="user">
                            <span><strong>By:</strong> <?php echo $post['U_Username']; ?></span> <span class="small-game"><?php echo $post['GA_Name']; ?></span>
                        </div>
                    </div>
                <?php endforeach; ?>
        </aside> 
    </main>
<?php include('inc/footer.php'); ?>