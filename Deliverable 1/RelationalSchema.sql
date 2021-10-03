USE project;
CREATE TABLE SPCABranches(
    NAME VARCHAR(50) NOT NULL,
    phoneNumber CHAR(10),
    street VARCHAR(100),
    city VARCHAR(100),
    province VARCHAR(100),
    postalCode CHAR(6),
    PRIMARY KEY(NAME)
);
CREATE TABLE Shelters(
    NAME VARCHAR(50) NOT NULL,
    phoneNumber CHAR(10),
    street VARCHAR(100),
    city VARCHAR(100),
    province VARCHAR(100),
    postalCode CHAR(6),
    URL VARCHAR(8000),
    PRIMARY KEY(NAME)
);
CREATE TABLE RescueOrganization(
    NAME VARCHAR(50) NOT NULL,
    phoneNumber CHAR(10),
    street VARCHAR(100),
    city VARCHAR(100),
    province VARCHAR(100),
    postalCode CHAR(6),
    PRIMARY KEY(NAME)
);
CREATE TABLE Donations(
    donateTo VARCHAR(50) NOT NULL,
    personDonated VARCHAR(50),
    DATE DATE,
    amount INTEGER,
    FOREIGN KEY(donateTo) REFERENCES RescueOrganization(NAME)
);
CREATE TABLE Employee(
    fname VARCHAR(50) NOT NULL,
    lname VARCHAR(50) NOT NULL,
    phoneNumber CHAR(10),
    street VARCHAR(100),
    city VARCHAR(100),
    province VARCHAR(100),
    postalCode CHAR(6),
    workLocation VARCHAR(50) NOT NULL,
    PRIMARY KEY(fname, lname),
    FOREIGN KEY(workLocation) REFERENCES SPCABranches(NAME)
);
CREATE TABLE Animals(
    animalID CHAR(8) NOT NULL,
    beginSPCABranch VARCHAR(50) NOT NULL,
    arrivedShelterDate DATE,
    leftShelterDate DATE,
    animalGoes VARCHAR(50) NOT NULL,
    moneyChangesHands INTEGER,
    PRIMARY KEY(animalID),
    FOREIGN KEY(beginSPCABranch) REFERENCES SPCABranches(NAME),
    FOREIGN KEY(animalGoes) REFERENCES Shelters(NAME)
);
CREATE TABLE adoptingAnimals(
    lname VARCHAR(50) NOT NULL,
    phoneNumber CHAR(10),
    street VARCHAR(100),
    city VARCHAR(100),
    province VARCHAR(100),
    postalCode CHAR(6),
    amount INTEGER,
    animalID CHAR(8) NOT NULL,
    payTo VARCHAR(50) NOT NULL,
    FOREIGN KEY(payTo) REFERENCES Shelters(NAME),
    FOREIGN KEY(animalID) REFERENCES Animals(animalID)
);
CREATE TABLE driversAndVolunteers(
    fname VARCHAR(50) NOT NULL,
    lname VARCHAR(50) NOT NULL,
    emergencyPhoneNumber CHAR(10),
    licencePlate VARCHAR(10),
    animalId CHAR(8) NOT NULL,
    animalFrom VARCHAR(50) NOT NULL,
    PRIMARY KEY(fname, lname),
    FOREIGN KEY(animalFrom) REFERENCES SPCABranches(NAME),
    FOREIGN KEY(animalID) REFERENCES Animals(animalID)
);
CREATE TABLE VetsVisiting(
    animalID CHAR(8) NOT NULL,
    vetName VARCHAR(50) NOT NULL,
    animalCondition VARCHAR(20) NOT NULL,
    weight VARCHAR(10) NOT NULL,
    dateOfVisiting DATE NOT NULL,
    FOREIGN KEY(animalID) REFERENCES Animals(animalID) ON DELETE CASCADE
);
CREATE TABLE animalTypes(
    TYPE VARCHAR(100),
    PRIMARY KEY(TYPE)
);
CREATE TABLE maxNumOfEachType(
    maxNum VARCHAR(100),
    PRIMARY KEY(maxNum)
);
