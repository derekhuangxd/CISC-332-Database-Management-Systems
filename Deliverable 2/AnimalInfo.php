<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"  />
	<title>Display Animal Information </title>
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

<h3>Display Animal Information</h3>
<p><em>This page will display the information about all the animals currently housed in a given SPCA location</em></p>

<?php
$givenSPCA = $_POST["SPCABranch"];                      
echo "<h4>Displaying Animal Information in $givenSPCA ....</h3>";

#run a query to get the project names and locations of the person's department.
$dbh = new PDO('mysql:host=localhost;dbname=animal', "root", "");
#user name and password for mysql when using XAMPP is "root" and a blank password
$rows = $dbh->query("select animalID, animalType, beginSPCABranch
                    from Animals
                    where arrivedShelterDate is null and beginSPCABranch='$givenSPCA'");
?>


<?php
if ($rows -> rowCount() > 0) { ?>

<table>
    <tr>
        <th> Animal ID </th>
        <th> Animal Type </th>
        <th> Current Location </th>
    </tr>
<?php
    foreach($rows as $row) {
		echo "<tr>
                <td>".$row[0]."</td>
                <td>".$row[1]."</td>
                <td>".$row[2]."</td>
              </tr>";
    }
} else
    echo "There are no record in this SPCA Branch. "
?>

</table>



</body>
</html> 
