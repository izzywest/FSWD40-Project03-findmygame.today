<?php $pageTitle='Games'; ?>
<?php include('inc/head.php'); ?>
<?php include('config/Database.php'); ?>
<?php 
	// DATABASE CONNECTION
	$db = new Database;
		// SHOW USERS
		$db->query('SELECT * FROM `game`');
		$show = $db->getResultSet();

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
                            <div class="game-platform"><strong>Platforms:</strong> <?php echo $game['GA_Platform']; ?></div>
                            <div class="game-genre"><?php echo $game['GA_Genre']; ?></div>
                        </div>
                    </div>
                    <div class="game-meta">
                        <h1><?php echo $game['GA_Name']; ?></h1>
                        <?php echo $game['GA_Description']; ?>
                    </div>
                </div>


            <?php endforeach; ?>
            <!-- END FOREACH-->

        </div>
        <aside>
            Display latest posts
        </aside> 
    </main>
<?php include('inc/footer.php'); ?>