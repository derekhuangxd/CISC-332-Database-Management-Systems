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


<h3>Get Drivers Information</h3>
<p><em>This page will show all the information for all drivers associated with a particular rescue organization.</em></p>


<?php
$givenOrg = $_POST["rescueOrganization"];
echo "<h4>Displaying Driver's Information in $givenOrg ....</h3>";

$dbh = new PDO('mysql:host=localhost;dbname=animal', "root", "");


$rows = $dbh->query("select fname, lname, emergencyPhoneNumber, licencePlate
                    from driversAndVolunteers
                    where licencePlate is not null and workLocation='$givenOrg'
");
?>


<?php
if ($rows -> rowCount() > 0) { ?>

<table>
    <tr>
        <th> First Name </th>
        <th> Last Name </th>
        <th> Emergency Phone Number </th>
        <th> Licence Plate </th>
    </tr>

<?php
    foreach($rows as $row) {
        echo "<tr>
                <td>".$row[0]."</td>
                <td>".$row[1]."</td>
                <td>".$row[2]."</td>
                <td>".$row[3]."</td>
              </tr>";
    }
} else
    echo "There are no record in this Rescue Organization. "
?>

</table>



</body>
</html> 
