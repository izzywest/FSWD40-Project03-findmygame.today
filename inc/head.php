<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!--jQuery-->
    <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
        crossorigin="anonymous"></script>
    <!--Fonts-->
    <link href="https://fonts.googleapis.com/css?family=Aldrich|Hammersmith+One|News+Cycle:400,700|Pragati+Narrow:400,700" rel="stylesheet">
    <!--Style-->
    <link rel="stylesheet" href="style/css/main.css">
    <title>G4M3R5</title>
</head>

<body>

    <header>
        <div id="logo">
            <img src="img/logo.png" alt="logo">
        </div>

        <nav>
            <ul>
                <li> <a href="games.php"> <span class="nav-img"> <?php echo file_get_contents("img/icons/game.svg"); ?> </span>Games </a></li>
                <li> <a href="posts.php"> <span class="nav-img"> <?php echo file_get_contents("img/icons/posts.svg"); ?> </span>Posts </a></li>
                <li> <a href="groups.php"> <span class="nav-img"> <?php echo file_get_contents("img/icons/group.svg"); ?> </span>Groups </a></li>
                <li> <a href=""> <span class="nav-img"> <?php echo file_get_contents("img/icons/user.svg"); ?> </span> </a></li>
            </ul>
        </nav>
    </header>