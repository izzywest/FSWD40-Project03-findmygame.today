<style>

footer {
    /* padding: 0 !important; */
}

.footer-img {
    width: 3.5rem;
}
.socialbar {
  display: grid;
  grid-template-columns: 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr;
  grid-template-rows: 1fr 2fr;
  align-items: center;
  /* justify-items: center;  */
}

.social-item {
justify-self: center;
}

.info-container {
  display: grid;
  grid-template-columns: 1fr 1fr 1fr;
  /* grid-template-rows: 1fr 1fr 1fr; */
  align-items: center;
}

.info-item {
justify-self: center;
}


</style>    

    <!--Footer-->
    <footer>
        <div class="socialbar">
                <div class="social-item footer-img">
                </div>
                <div class="social-item footer-img">
                <?php echo file_get_contents("img/icons/social/discord.svg"); ?>
                </div>
                <div class="social-item footer-img">
                <?php echo file_get_contents("img/icons/social/reddit.svg"); ?>
                </div>
                <div class="social-item footer-img">
                <?php echo file_get_contents("img/icons/social/steam.svg"); ?>
                </div>
                <div class="social-item footer-img">
                <?php echo file_get_contents("img/icons/social/telegram.svg"); ?>
                </div>
                <div class="social-item footer-img">
                <?php echo file_get_contents("img/icons/social/twitch.svg"); ?>
                </div>
                <div class="social-item footer-img">
                <?php echo file_get_contents("img/icons/social/youtube.svg"); ?>
                </div>
                <div class="social-item footer-img">
                <?php echo file_get_contents("img/icons/social/deviantart.svg"); ?>
                </div>       
                <div class="social-item footer-img">
                </div>     
        </div>
        <div class="info-container">
            <div class="info-item">
                <p><b>Address:</b><br> Gamerstreet 20,<br> 23932 San Andreas</p>
            </div>
            <div class="info-item">
                <p><b>Address:</b><br> Gamerstreet 20,<br> 23932 San Andreas</p>
            </div>
            <div class="info-item">
                <p><b>Address:</b><br> Gamerstreet 20,<br> 23932 San Andreas</p>
            </div>
        </div>
</div>

    </footer>

    <!--Scripts-->
    <script src="js/sliders.js"></script>
    <script src="js/main.js"></script>
</body>

</html>
