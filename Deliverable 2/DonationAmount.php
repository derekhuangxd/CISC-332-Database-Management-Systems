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

<h3>Show Donation Amount</h3>
<p><em>This page will show the total amount donated for 2018 to a selected organization.</em></p>


<table> 
<?php
$givenLocation = $_POST["organization"];                      
echo "<h4>Displaying Donation Amount for $givenLocation ....</h3>";

#run a query to get the project names and locations of the person's department.
$dbh = new PDO('mysql:host=localhost;dbname=animal', "root", "");
#user name and password for mysql when using XAMPP is "root" and a blank password
$rows = $dbh->query("select sum(amount)
from Donations
where donateTo='$givenLocation' and Year(date)=2018");

	foreach($rows as $row) {
		if ($row[0] > 0) {
			echo "<tr><th>Donation Amount</th></tr><br>";
			echo "<tr><td>$".$row[0]."</td></tr>";
		}
		else {
			echo "<p>The donation amount to this organization in 2018 is $0.00</p>";
			}
	}

	$dbh = null;

?>
</table> 


</body>
</html> 