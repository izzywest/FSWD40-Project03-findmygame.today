<?php $pageTitle='Events'; ?>
<?php include('inc/head.php'); ?>
<?php include('config/Database.php'); ?>
<?php
//Show latest posts
        $db = new Database;

		$db->query('SELECT  *
                    FROM `event`
                    JOIN `user`
                    ON   `event`.`FK_U_ID` = `user`.`U_ID`
                   ');
		$showEvents = $db->getResultSet();
?>

   <div id="about" class="background-image"></div> 
    <!--Content-->
    <main class="top-margin">
        <div id="posts" class="content">
            <?php foreach($showEvents as $event) : ?>
                    <div class="latest-posts post-boxes">
                        <h3><?php echo $event['EV_Name'] ?><a href="https://www.google.com/maps/place/<?php echo $event['EV_Location']; ?>" target="_blank"><?php echo $event['EV_Location']; ?></a></h3>
                        <small><?php echo $event['EV_Description']; ?></small>
                        <div class="timeframe">
                            <span><strong>Start: </strong><?php echo $event['EV_ST_DateTime']; ?></span><span><strong>End: </strong><?php echo $event['EV_END_DateTime']; ?></span>
                        </div>
                        <div class="user">
                            <span><strong>By:</strong> <?php echo $event['U_Username']; ?> <strong>@</strong><?php echo $event['EV_PO_DateTime']; ?></span><button>Join</button>
                        </div>
                    </div>
            <?php endforeach; ?>
        </div>
        <aside class="event-img">
            <h1>Event Images</h1>
            <img src="img/events/1.jpg" alt="">
            <img src="img/events/2.jpg" alt="">
            <img src="img/events/3.jpg" alt="">
            <img src="img/events/4.jpg" alt="">
            <img src="img/events/5.jpg" alt="">
            <img src="img/events/6.jpg" alt="">
            <img src="img/events/7.jpg" alt="">
            <img src="img/events/8.jpg" alt="">
            <img src="img/events/9.jpg" alt="">
            <img src="img/events/10.jpg" alt="">
            <img src="img/events/11.jpg" alt="">
            <img src="img/events/12.jpg" alt="">
            <img src="img/events/13.jpg" alt="">
        </aside> 
    </main>
<?php include('inc/footer.php'); ?>
