<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="../style/css/dashboard.css">
    <!--Fonts-->
    <link href="https://fonts.googleapis.com/css?family=Aldrich|Hammersmith+One|News+Cycle:400,700|Pragati+Narrow:400,700" rel="stylesheet"> 
    <!--jQuery-->
    <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
    <title>$Admin Dashboard</title>
</head>
<body>
    <header>
        <div class="user-logged">
            <img class="avatar-small" src="../img/avatars/default_avatar.jpg" alt="avatar"> 
            <h1 class="username">$Username</h1>
        </div>
        <h1><?php echo $pageTitle ?></h1>
    </header>
    <main>
        <aside><!-- ### Hide/Show Navs based on user role ### -->
                <!-- ADMIN NAV -->
                <ul class="dash-nav">
                    <li><a class="backlink" href="../index.html">Back to Page</a></li>
                    <li><a href="index.php">Overview</a></li>
                    <li><a href="profile.php">Userlist</a></li>
                    <li><a href="posts.php">Userposts</a></li>
                    <li><a href="#">Sub Menu Demo</a>
                        <ul class="dash-sub-nav">
                            <li><a href="#">Sub 1</a></li>
                            <li><a href="#">Sub 2</a></li>
                            <li><a href="#">Sub 3</a></li>
                        </ul>
                    </li>
                </ul>

                <!-- USER NAV -->
                <ul class="dash-nav">
                    <li><a class="backlink" href="../index.html">Back to Page</a></li>
                    <li><a href="profile.php">My Profile</a></li>
                    <li><a href="posts.php">My Posts</a></li>
                </ul>

        </aside>