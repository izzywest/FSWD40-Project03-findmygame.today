<style>

footer {
}

.footer-img {
    width: 3.5rem;
}

.socialbar {
  display: grid;
  grid-template-columns: 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr;
  grid-template-rows: 1fr;
  align-items: center;
  margin: 1em;
}

.social-item {
justify-self: center;
}

.info-container {
  display: grid;
  grid-template-columns: 1fr 1fr 1fr;
  margin: 1em;
  align-items: center;
}

.info-item {
justify-self: center;
text-align: center;
}

.contact-img {
    width: 1.5em;   
}

@media only screen and (max-width: 600px) {
    .socialbar {
        display: grid;
        grid-template-columns: 1fr 1fr 1fr 1fr;
        grid-template-rows: 1fr;
        align-items: center;
        margin: 1em
}
    .info-container {
        display: grid;
        grid-template-columns: 1fr;
        margin: 1em;
        align-items: center;
    }
    .info-item {
        margin-bottom: 1.5em;
    }
}

</style>    

    <!--Footer-->
    <footer>
        <div class="socialbar">
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
                <?php echo file_get_contents("img/icons/social/facebook.svg"); ?>
                </div>
        </div>
        <hr>
        <div class="info-container">
            <div class="contact-img info-item">
                <span><?php echo file_get_contents("img/icons/social/envelope.svg"); ?><b>info@findmygame.com</b></span>
            </div>
            <div class="contact-img info-item">
                <p><?php echo file_get_contents("img/icons/social/phone.svg"); ?><b>(369) 456-4866</b></p>
            </div>
            <div class="contact-img info-item">
                <p><?php echo file_get_contents("img/icons/social/home.svg"); ?><b></b>Gamerstreet 42, 06232 San Andreas</p>
            </div>
        </div>
</div>

    </footer>

    <!--Scripts-->
    <script src="js/sliders.js"></script>
    <script src="js/main.js"></script>
</body>

</html>
