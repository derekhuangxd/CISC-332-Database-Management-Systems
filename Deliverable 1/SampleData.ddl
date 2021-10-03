-- Inserting data to SPCABraches table
Insert into SPCABranches values ("First SPCA Branch", "1111111111", "25 Union St W", "Kingston", "Ontario", "K7L2N8");

-- Inserting data to Shelters table 
Insert into Shelters values ("First Shelter", "5555555555", "24 Union St W", "Kingston", "Ontario", "K7L2N8", "http://cs.queensu.ca");

-- Inserting data to RescueOrganization table 
Insert into RescueOrganization values ("First Rescue Organization", "6666666666", "26 Union St W", "Kingston", "Ontario", "K7L2N8"); 

-- Inserting data to Donations table
Insert into Donations values ("First Rescue Organization", "Tony Smith", 05/01/2019, 111); 

-- Inserting data to Employee table
Insert into Employee values ("John", "Smith", "2222222222", "21 Union St W", "Kingston", "Ontario", "K7L2N8", "First SPCA Branch");

-- Inserting data to Animals table 
Insert into Animals values ("A1B2C3D4", "First SPCA Branch", 03/02/2018, 03/03/2019, "First Shelter", 222); 

-- Inserting data to adoptingAnimals table 
Insert into adoptingAnimals values ("Smith", "7777777777", "27 Union St W", "Kingston", "Ontario", "K7L2N8", 444, "A1B2C3D4", "First Shelter");

-- Inserting data to driversAndVolunteers table 
Insert into driversAndVolunteers values ("Lucy", "Smith", "8888888888", "IBMFBI", "A1B2C3D4", "First SPCA Branch"); 

-- Inserting data to VetsVisiting table 
Insert into VetsVisiting values ("A1B2C3D4", "Jenny Smith", "Good", "78kg", 05/02/2018);

-- Inserting data to animalTypes table 
Insert into animalTypes values ("cat"); 

-- Inserting data to maxNumOfEachType table
Insert into maxNumOfEachType values ("20");

