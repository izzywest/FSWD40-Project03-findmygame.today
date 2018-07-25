<style>

footer {
    /* padding: 0 !important; */
}

.footer-img {
    width: 3.5rem;
}
.grid-container {
  display: grid;
  grid-template-columns: 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr;
  align-items: center;
  justify-items: center; 
}

.grid-item {
justify-self: center;
}
</style>    

    <!--Footer-->
    <footer>
        <div class="grid-container">
            <div class="grid-item footer-img">
            </div>
            <div class="grid-item footer-img">
            <?php echo file_get_contents("img/icons/social/discord.svg"); ?>
            </div>
            <div class="grid-item footer-img">
            <?php echo file_get_contents("img/icons/social/reddit.svg"); ?>
            </div>
            <div class="grid-item footer-img">
            <?php echo file_get_contents("img/icons/social/steam.svg"); ?>
            </div>
            <div class="grid-item footer-img">
            <?php echo file_get_contents("img/icons/social/telegram.svg"); ?>
            </div>
            <div class="grid-item footer-img">
            <?php echo file_get_contents("img/icons/social/twitch.svg"); ?>
            </div>
            <div class="grid-item footer-img">
            <?php echo file_get_contents("img/icons/social/youtube.svg"); ?>
            </div>
            <div class="grid-item footer-img">
            <?php echo file_get_contents("img/icons/social/deviantart.svg"); ?>
            </div>       
            <div class="grid-item footer-img">
            </div>     
        </div>

        <!-- <h1>Test</h1> -->
    </footer>

    <!--Scripts-->
    <script src="js/sliders.js"></script>
    <script src="js/main.js"></script>
</body>

</html>
