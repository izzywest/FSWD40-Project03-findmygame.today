<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="../style/css/dashboard.css">
    <title>$Admin Dashboard</title>
</head>
<body>
    <header>
        <h1>$Admin Dashboard</h1>
        <?php include('../inc/components/logged_user.php'); ?>
    </header>
    <main>
        <aside>
                <ul class="admin-nav">
                    <li><a href="#">Menu 1</a></li>
                    <li><a href="#">Menu 2</a></li>
                    <li><a href="#">Menu 3</a></li>
                    <li><a href="#">Menu 4</a></li>
                    <li><a href="#">Menu 5</a></li>
                    <li><a href="#">Menu 6</a></li>
                    <li><a href="#">Menu 7</a></li>
                </ul>
        </aside>
        <div class="admin-content">
            Content
        </div>
    </main>
    <footer>
        Status bar
    </footer>
</body>
</html>