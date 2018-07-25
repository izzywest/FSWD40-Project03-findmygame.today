<?php $pageTitle='Welcome'; ?>
<?php include('inc/head.php'); ?>
    <!--Slider-->
        <div id="slider">
            <div class="loading"></div>
            <div class="arrow arrow-left">
                <i class="fa fa-angle-left fa-2x"></i>
            </div>
            <ul class="slides">
                <li class="slide slide1">
                    <div>
                        <h3>Sign up</h3>
                        <span>we promise its free ;)</span>
                    </div>
                </li>
                <li class="slide slide2">
                    <div>
                        <h3>Discover</h3>
                        <span>thousands of players and games!</span>
                    </div>
                </li>
                <li class="slide slide3">
                    <div>
                        <h3>Join</h3>
                        <span>groups and lead your team to victory!</span>
                    </div>
                </li>
                <li class="slide slide4">
                    <div>
                        <h3>Create</h3>
                        <span>your own team for any game!</span>
                    </div>
                </li>
            </ul>
            <div class="arrow arrow-right">
                <i class="fa fa-angle-right fa-2x"></i>
            </div>
        </div>

    
    <!--Content-->
    <main>
        <div class="content">
            <section>
            <h1>Sign up now</h1>
                <form id="reg-form" action="">
                    <div class="form-block">
                    <input type="text" class="css-input" placeholder="E-Mail">
                    <input type="text" class="css-input" placeholder="Username">
                    </div>
                    <div class="form-block">
                    <input type="text" class="css-input" placeholder="First Name">
                    <input type="text" class="css-input" placeholder="Last Name">
                    <input type="text" class="css-input" placeholder="Age">
                    </div>
                    <div class="form-block">
                    <input type="text" class="css-input" placeholder="Address">
                    <input type="text" class="css-input" placeholder="ZIP and City">
                    <input type="text" class="css-input" placeholder="Region">
                    </div>
                    <input class="btn" type="submit" value="Submit">
                </form>
            </section>
        </div>
        <!-- <aside>
            Sidebar
        </aside> -->
    </main>
<?php include('inc/footer.php'); ?>