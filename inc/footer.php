<style>

.footer-img {
    width: 3.5rem;
}

.socialbar {
  display: grid;
  grid-template-columns: 5fr 1fr 1fr 1fr 1fr;
  grid-template-rows: 1fr;
  align-items: right;
  margin: 1em;
}

.social-item {
margin-bottom: -50px;
}

hr {
    margin-top: 4em;
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
    margin-bottom: -3px;
    width: 1em;   
}

#form {
    margin-top: 0.5em;
    margin-right: auto;
    margin-left: auto;
    text-align: center;
    height: 100%;
}

input {
    width: 200px;
}

@media only screen and (max-width: 600px) {
    .socialbar {
        display: grid;
        grid-template-columns: 1fr 1fr;
        align-items: center;
        margin: 1em;
    }

    .goaway {
        display: none;
    }
    
    .info-container {
        display: grid;
        grid-template-columns: 1fr;
        margin: 1em;
        align-items: center;
    }
    
    div .info-item {
        margin-bottom: 1.5em;
        display: inline;
    }

    #form {
    margin-top: 1em;
    margin-right: auto;
    margin-left: auto;
    text-align: center;
    height: 100%;
    }

    .social-item {
    margin-bottom: 0px;
    }
}

</style>    

    <!--Footer-->
    <footer>
        <div class="socialbar">
        <div id="templateBody" class="social-item bodyContent rounded6">

            <form id="form" action="https://findmygame.us18.list-manage.com/subscribe/post" method="POST">
                <input name="u" value="80532ac65f7431bf30eed88a9" type="hidden">
                <input name="id" value="33db8a3c06" type="hidden">

                <div id="mergeTable" class="mergeTable">
                    <div class="mergeRow dojoDndItem mergeRow-email" id="mergeRow-0">
                        <div class="field-group">
                            <input class="css-input" autocapitalize="off" autocorrect="off" name="MERGE0" id="MERGE0" size="25" placeholder="Email" value="" type="email">
                        </div>
                    </div>
                </div>
                <div class="submit_container clear">
                    <input class="css-input formEmailButton" name="submit" value="Subscribe!" type="submit">
                </div>
                <input name="ht" value="8d8786142eaf5539faf5163789dc192f47f757e2:MTUzMjU5MTYzOS42Mzkx" type="hidden">
                <input name="mc_signupsource" value="hosted" type="hidden">
            </form>
        </div>
        

            <div class="social-item footer-img">
                <a target="_blank" href="https://discordapp.com/">
                <?php echo file_get_contents("img/icons/social/discord.svg"); ?>
                </a>
            </div>
            <div class="social-item footer-img">
                <a target="_blank" href="https://www.reddit.com/">
                <?php echo file_get_contents("img/icons/social/reddit.svg"); ?>
                </a>
            </div>
            <div class="social-item footer-img">
                <a target="_blank" href="https://store.steampowered.com">
                <?php echo file_get_contents("img/icons/social/steam.svg"); ?>
                </a>
            </div>
            <div class="social-item footer-img">
                <a target="_blank" href="https://telegram.org/">
                <?php echo file_get_contents("img/icons/social/telegram.svg"); ?>
                </a>
            </div>
            <div class="social-item goaway">
            </div>
            <div class="social-item footer-img">
                <a target="_blank" href="https://www.twitch.tv/">
                <?php echo file_get_contents("img/icons/social/twitch.svg"); ?>
                </a>
            </div>
            <div class="social-item footer-img">
                <a target="_blank" href="https://www.youtube.com/">
                <?php echo file_get_contents("img/icons/social/youtube.svg"); ?>
                </a>
            </div>
            <div class="social-item footer-img">
                <a target="_blank" href="https://www.deviantart.com/">
                <?php echo file_get_contents("img/icons/social/deviantart.svg"); ?>
                </a>
            </div>
            <div class="social-item footer-img">
                <a target="_blank" href="https://www.facebook.com/">
                <?php echo file_get_contents("img/icons/social/facebook.svg"); ?>
                </a>
            </div>
        </div>
   
        <hr>
        <div class="info-container">
            <div class="info-item">
            <img class="contact-img" src="img/icons/social/mail.png" alt="envelope">
                <b>info@findmygame.com</b>
            </div>
            <div class="info-item">
            <img class="contact-img" src="img/icons/social/phone.png" alt="">
                <b>(369) 456-4866</b>
            </div>
            <div class="info-item">
            <img style="width: 1.2em;" class="contact-img" src="img/icons/social/address.png" alt="">
                Gamerstreet 42, <b>06232 San Andreas</b>
            </div>
        </div>


    </footer>

    <!--Scripts-->
    <script src="js/sliders.js"></script>
    <script src="js/main.js"></script>
</body>

</html>
