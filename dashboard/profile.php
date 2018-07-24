<?php $pageTitle = 'Users' ?>
<?php //$pageTitle = 'Profile' ?>
<?php include('inc/head.php'); ?>
<?php include('../config/Database.php'); ?>
<?php 
	// DATABASE CONNECTION
	$db = new Database;
		// SHOW USERS
		$db->query('SELECT * FROM `user`');
		$show = $db->getResultSet();

// var_dump($show) - TO DEBUG;
?>
<div class="admin-content">
    <!-- Content User-->
    Display all users in Table, for edit, ban, or remove. 
<table>
	<thead>
		<tr>
			<th>ID</th>
			<th>Username</th>
			<th>Email</th>
		</tr>
	</thead>
	<tbody>
	<!-- FOREACH TO LOOP OVER USER ENTRIES-->
	<?php foreach($show as $user) : ?>
	<!--var_dump($user) - TO DEBUG-->
		<tr>
			<td><?php echo $user['U_ID']; ?></td>
			<td><?php echo $user['U_Username']; ?></td>
			<td><?php echo $user['U_Email']; ?></td>
		</tr>
	<?php endforeach; ?>
	<!-- END FOREACH-->
</tbody>
</table>

<form method="post">
	<input type="text" name="id">
	<input type="password" name="pass">
	<input type="email" name="email">
	<input type="text" name="firstname">
	<input type="text" name="lastname">
	<input type="text" name="age">
	<input type="text" name="address">
	<input type="text" name="city">
	<input type="text" name="region">
	<input type="text" name="avatar">
	<input type="text" name="rank">
	<input type="text" name="socials">
	<input type="submit" name="submit">
</form>

<?php 
$db2 = new Database;

	if(isset($_POST['submit'])) {

		$pass =  $_POST['pass'];
		$email = $_POST['email'];
		$firstname = $_POST['firstname'];
		$lastname = $_POST['lastname'];
		$age = $_POST['age'];
		$address = $_POST['address'];
		$city = $_POST['city'];
		$region =  $_POST['region'];
		$avatar = $_POST['avatar'];
		$rank = $_POST['rank'];
		$socials = $_POST['socials'];
		$id = $_POST['id'];

		
		$db2->bind(':pass', $pass, PDO::PARAM_STR);
		$db2->bind(':email', $email, PDO::PARAM_STR);
		$db2->bind(':firstname', $firstname, PDO::PARAM_STR);
		$db2->bind(':lastname', $lastname, PDO::PARAM_STR);
		$db2->bind(':age', $age, PDO::PARAM_INT);
		$db2->bind(':address', $address, PDO::PARAM_STR);
		$db2->bind(':city', $city, PDO::PARAM_STR);
		$db2->bind(':region', $region,PDO::PARAM_STR);
		$db2->bind(':avatar', $avatar, PDO::PARAM_STR);
		$db2->bind(':rank', $rank,PDO::PARAM_STR);
		$db2->bind(':socials', $socials, PDO::PARAM_STR);
		$db2->bind(':id', $id, PDO::PARAM_INT);

		// EDIT USERS
		$db2->query('UPDATE `user` SET U_ID=:id, U_Pass=:pass, U_Email=:email, U_Firstname=:firstname, U_Lastname=:lastname, U_Age=:age, U_Address=:address, U_City=:city, U_Region=:region, U_Avatar=:avatar, U_Rank=:rank, U_Socials=:socials WHERE U_ID=:id');
		
		$db2->execute();
	}

	// DELETE USERS
	$db->query('DELETE FROM `user` WHERE U_ID=:id');
	$db->bind(':id', $_POST['id']);   
	$db->execute();

?>


</div>

<div class="user-content">
    <!-- Content User-->
    Display user profile for edit. Or remove account. 
</div>

<?php include('inc/footer.php'); ?>