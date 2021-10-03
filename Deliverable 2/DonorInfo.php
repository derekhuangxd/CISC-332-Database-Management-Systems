<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"  />
	<title>Home </title>
	<link rel="stylesheet" href="css/style.css">
	<style>
		@import url('https://fonts.googleapis.com/css?family=PT+Serif');
		@import url('https://fonts.googleapis.com/css?family=Josefin+Sans');
	</style>
</head>

<body>
<h1>SPCA Animal Shelter Databases</h1>
<p>
	<img src="./img/pet.png" alt="Pet" width="26%"/>

</p>
<h2>Please select one of the following actions:</h2>

<header>
	<nav>
		<ul>
			<li><a href="./AnimalInfo.html">Display Animal Information</a></li>
			<li><a href="./DriversInfo.html">Get Drivers Information</a></li>
			<li><a href="./DonorInfo.html">Get Donor Information</a></li>
			<li><a href="./DonationAmount.html">Show Donation Amount</a></li>
		</ul>
	</nav>
</header>

<h3>Get Donor Information</h3>
<p><em>This page will, for a particular donor, show which organizations they donated to and the total amount donated (over their lifetime)</em></p>

<table> 
<?php
$givenDonor = $_POST["donor"];                      
echo "<h4>Displaying Donor Information for $givenDonor ....</h3>";

#run a query to get the project names and locations of the person's department.
$dbh = new PDO('mysql:host=localhost;dbname=animal', "root", "");
#user name and password for mysql when using XAMPP is "root" and a blank password
$rows = $dbh->query("select donateTo, sum(amount)
from Donations
where personDonated='$givenDonor'
group by personDonated, donateTo");

if ($rows->rowCount() > 0) {
	echo "<tr><th>Organization</th><th>Total Amount Donated</th></tr><br>";
	foreach($rows as $row) {
			echo "<tr><td>".$row[0]."</td><td>".$row[1]."</td></tr>";
		}
	}
else {
	echo "<p>There is no records found.</p>";
	}
	$dbh = null;

?>
</table> 


</body>
</html> 