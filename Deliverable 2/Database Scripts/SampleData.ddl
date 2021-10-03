-- Inserting data to SPCABraches table
Insert into SPCABranches values ("First SPCA Branch", "1111111111", "25 Union St W", "Kingston", "Ontario", "K7L2N8");
Insert into SPCABranches values ("Second SPCA Branch", "2222222222", "26 Union St W", "Kingston", "Ontario", "K7L2N8");
Insert into SPCABranches values ("Third SPCA Branch", "3333333333", "27 Union St W", "Kingston", "Ontario", "K7L2N8");

-- Inserting data to Shelters table
Insert into Shelters values ("First Shelter", "5555555555", "24 Union St W", "Kingston", "Ontario", "K7L2N8", "http://cs.queensu.ca", 'dog', 20);
Insert into Shelters values ("Second Shelter", "6666666666", "23 Union St W", "Kingston", "Ontario", "K7L2N8", "http://cs.queensu.ca", 'cat', 20);
Insert into Shelters values ("Third Shelter", "7777777777", "24 Union St W", "Kingston", "Ontario", "K7L2N8", "http://cs.queensu.ca", 'rabbit', 20);

-- Inserting data to RescueOrganization table
Insert into RescueOrganization values ("First Rescue Organization", "8888888888", "30 Union St W", "Kingston", "Ontario", "K7L2N8");
Insert into RescueOrganization values ("Second Rescue Organization", "9999999999", "30 Union St W", "Kingston", "Ontario", "K7L2N8");

-- Inserting data to Donations table
Insert into Donations values ("First Rescue Organization", "Tony Smith", '2019-05-01', 111);
Insert into Donations values ("First Rescue Organization", "Tony Smith", '2018-05-01', 222);
Insert into Donations values ("First Rescue Organization", "Jack", '2018-06-01', 223);
Insert into Donations values ("Second Rescue Organization", "Tony Smith", '2017-05-01', 333);
Insert into Donations values ("First SPCA Branch", "Jack", '2019-08-01', 444);

-- Inserting data to Employee table
Insert into Employee values ("John", "Smith", "2222222222", "21 Union St W", "Kingston", "Ontario", "K7L2N8", "First SPCA Branch");

-- Inserting data to Animals table
Insert into Animals values ("111111", 'dog', "First SPCA Branch", '2018-02-03', '2019-03-03', "First Shelter", 222);
Insert into Animals values ("222222", 'dog', "First SPCA Branch", null, null, null, null);
Insert into Animals values ("333333", 'cat', "Third SPCA Branch", '2018-09-01', '2019-12-01', "Second Shelter", 333);
Insert into Animals values ("444444", 'rabbit', "Second SPCA Branch", null, null, null, null);
Insert into Animals values ("555555", 'cat', "Third SPCA Branch", '2017-03-04', '2017-09-03', "Third Shelter", 444);


-- Inserting data to adoptingAnimals table
Insert into adoptingAnimals values ("Smith", "7777777777", "27 Union St W", "Kingston", "Ontario", "K7L2N8", 444, "111111", "First Shelter");

-- Inserting data to driversAndVolunteers table
Insert into driversAndVolunteers values ("Lucy", "Smith", "8888888888", "IBMFBI", "111111", "Second SPCA Branch", "First Rescue Organization"); 
Insert into driversAndVolunteers values ("Greg", "McLeod", "9842930043", null, "333333", "Third SPCA Branch", "Second Rescue Organization");
Insert into driversAndVolunteers values ("Kim", "Chan", "3984992044", null, "555555", "Third SPCA Branch",  "Third Rescue Organization");


-- Inserting data to VetsVisiting table
Insert into VetsVisiting values ("111111", "Jenny Smith", "Good", "78kg", '2018-02-05');