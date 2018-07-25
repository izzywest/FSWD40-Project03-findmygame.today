<?php 
    $pageTitle='Welcome'; 
    include('inc/head.php');
    include_once('config/Database.php');

    $db = new Database();

    // REGISTER
    if(isset($_POST['submit'])){
        $email = trim($_POST['email']);
        $username = trim($_POST['username']);
        $pass = trim($_POST['password']);
        $firstname = trim($_POST['firstname']);
        $lastname = trim($_POST['lastname']);
        $age = $_POST['age'];
        $address = trim($_POST['address']);
        $city = trim($_POST['city']);
        $region = trim($_POST['region']);

        $db->register($email, $username, $pass, $firstname, $lastname, $age, $address, $city, $region);
    }
?>
    <!--Slider-->
        <div id="slider">
            <div class="loading"></div>
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
        </div>

    
    <!--Content-->
    <main>
        <div class="content">
            <section>
            <h1>Sign up now</h1>
                <form id="reg-form" method="POST">
                    <div class="form-block">
                    <input type="text" class="css-input" placeholder="E-Mail" name="email">
                    <input type="text" class="css-input" placeholder="Username" name="username">
                    <input type="password" class="css-input" placeholder="Password" name="password">
                    <input type="password" class="css-input" placeholder="Repeat Password" name="rePassword">
                    </div>
                    <div class="form-block">
                    <input type="text" class="css-input" placeholder="First Name" name="firstname">
                    <input type="text" class="css-input" placeholder="Last Name" name="lastname">
                    <input type="text" class="css-input" placeholder="Age" name="age">
                    </div>
                    <div class="form-block">
                    <input type="text" class="css-input" placeholder="Address" name="address">
                    <input type="text" class="css-input" placeholder="City" name="city">
                    <input type="text" class="css-input" placeholder="Region" name="region">
                    </div>
                    <input class="btn" type="submit" value="Submit" name="submit">
                </form>
            </section>
        </div>
        <!-- <aside>
            Sidebar
        </aside> -->
    </main>
<?php include('inc/footer.php'); ?>

