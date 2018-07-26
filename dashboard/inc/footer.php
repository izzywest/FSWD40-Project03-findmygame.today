    </main>
    <footer>
        <ul class="status-bar">
            <li>Logged in as: <strong><?php echo $_SESSION['role']; ?></strong></li>
            <li>Rank: <strong> $rank</strong></li>
            <li>Posts: <strong>$int</strong></li>
            <li>Favorite Games: <strong>$gameList</strong></li>
        </ul>
        <div class="logout-container">
            <span class="icon-small"><?php echo file_get_contents("../img/icons/exit-door.svg"); ?></span>
            <a class="logout" href="../inc/logout.php">Logout</a>
        </div>
    </footer>

    <script src="../js/dashboard.js"></script>
</body>
</html>