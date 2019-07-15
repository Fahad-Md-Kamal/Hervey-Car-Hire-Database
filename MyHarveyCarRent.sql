---ORACLE DATABASE



--------Table Owner Customer
CREATE TABLE OwnerCustomer(
    OwnerCustomerId NUMBER(10),
    OwnerName VARCHAR2(50),
    OwnerAddress VARCHAR2(200),
    OwnerEmail VARCHAR2(100),
    OwnerContact VARCHAR2(15),
    CONSTRAINT OwnerCustomer_ID_PK PRIMARY KEY(OwnerCustomerId)
    );




---Table Owner Fleet
CREATE TABLE OwnerFleet(
    OwnerFleetId NUMBER(10),
    OwnerCustomerId NUMBER(10),
    StartDate DATE,
    EndDate DATE,
    CONSTRAINT OwnerFleet_ID_PK PRIMARY KEY(OwnerFleetId),
    CONSTRAINT OwnerCustomer_ID_FK FOREIGN KEY(OwnerCustomerId) REFERENCES OwnerCustomer(OwnerCustomerId)
    );



----------Table Owner Customer Payment
CREATE TABLE OwnCustPay(
    OwnCustPayID NUMBER(10),
    OwnerFleetId NUMBER(6),
    PaymentDate DATE,
    PaidAmount NUMBER(5),
    CONSTRAINT OwnCustPay_ID_PK PRIMARY KEY(OwnCustPayID),
    CONSTRAINT OwnerFleet_ID_FK FOREIGN KEY(OwnerFleetId) REFERENCES OwnerFleet(OwnerFleetId)
    );


--------Table CorporateCustomer

CREATE TABLE CorporateCustomer(
    CorporateCustomerId NUMBER(10),
    CorporateName VARCHAR2(50),
    CorporateAddress VARCHAR2(200),
    CorporateEmail VARCHAR2(100),
    CorporateContact VARCHAR2(15),
    CONSTRAINT CorporateCustomer_ID_PK PRIMARY KEY(CorporateCustomerId)
    );


---Table Corporate Fleet
CREATE TABLE CorporateFleet(
    CorpFleetId NUMBER(10),
    CorporateCustomerId NUMBER(10),
    StartDate DATE,
    EndDate DATE,
    CONSTRAINT CorporateFleet_ID_PK PRIMARY KEY(CorpFleetId),
    CONSTRAINT CorporateCustomer_ID_FK FOREIGN KEY(CorporateCustomerId) REFERENCES CorporateCustomer(CorporateCustomerId)
    );


----------Table Owner Customer Payment
CREATE TABLE CorpCustPay(
    CorpCustPayID NUMBER(10),
    CorpFleetId NUMBER(6),
    PaymentDate DATE,
    PaidAmount NUMBER(5),
    CONSTRAINT CorpCustPay_ID_PK PRIMARY KEY(CorpCustPayID),
    CONSTRAINT CorporateFleet_ID_FK FOREIGN KEY(CorpFleetId) REFERENCES CorporateFleet(CorpFleetId)
    );


------------ VEHICLE
CREATE TABLE Vehicle(
    VehicleId NUMBER(10),
    VehicleModel VARCHAR2(20),
    VehicleReg VARCHAR2(18) UNIQUE,
    CONSTRAINT Vehicle_ID_PK PRIMARY KEY(VehicleId)
	);


------------- Vehicle Description
CREATE TABLE VehicleDesc(
    VehicleTypeID NUMBER(10),
    VehicleTypeCode VARCHAR2(10),
    TypeDescription VARCHAR2(50),
    CONSTRAINT Vehicle_Type_ID_PK PRIMARY KEY(VehicleTypeID)
    );


-------------------- Vehicle Type Description
CREATE TABLE VehicleAndDesc(
    VehicleID NUMBER(10) NOT NULL,
    VehicleTypeID NUMBER(10) NOT NULL,
    CONSTRAINT Desc_Vehicle_FK FOREIGN KEY(VehicleId) REFERENCES Vehicle(VehicleId),
    CONSTRAINT V_T_ID_FK FOREIGN KEY(VehicleTypeID) REFERENCES VehicleType(VehicleTypeID)
);


-------------------- Owner Fleet table
CREATE TABLE OwnerFleetAndVehicle(
    OwnerFleetId NUMBER(10) NOT NULL,
    VehicleId NUMBER(10) NOT NULL,
    CONSTRAINT Own_Flt_Id_FK FOREIGN KEY(OwnerFleetId) REFERENCES OwnerFleet(OwnerFleetId),
    CONSTRAINT Vh_Id_FK FOREIGN KEY(VehicleId) REFERENCES Vehicle(VehicleId)
);


----------- Corporate Fleet and Vehicle Table
CREATE TABLE CorpFleetAndVehicle(
    CorpFleetId NUMBER(10) NOT NULL,
    VehicleId NUMBER(10) NOT NULL,
    CONSTRAINT CorpFleetId_FK FOREIGN KEY(CorpFleetId) REFERENCES CorporateFleet(CorpFleetId),
    CONSTRAINT Vehicle_Id_FK FOREIGN KEY(VehicleId) REFERENCES Vehicle(VehicleId)
);


------------------ Driver Table
CREATE TABLE Driver(
    DriverId VARCHAR2(4),
    DriverName VARCHAR2(50),
    DriverAddress VARCHAR2(200),
    DriverContact VARCHAR2(15),
    CONSTRAINT Driver_Id_PK PRIMARY KEY(DriverId)
);


------------------- Driver Payment
CREATE TABLE DriverPayment(
    DriverPaymentId NUMBER(10),
    DriverId VARCHAR2(4) NOT NULL,
    PaymentDate DATE,
    PaidAmount NUMBER(5),
    CONSTRAINT DriverPayment_Id_PK PRIMARY KEY(DriverPaymentId),
    CONSTRAINT Driver_Id_FK FOREIGN KEY(DriverId) REFERENCES Driver(DriverId)
);


----------------- Rental RentalArrangement
CREATE TABLE RentalArrangement(
    RentalArrangementId NUMBER(10),
    VehicleId NUMBER(10) NOT NULL,
    DriverId VARCHAR2(4) NOT NULL,
    RentalArrangementType VARCHAR2(20),
    CHECK(RentalArrangementType IN ('One-off','Monthly', 'Duration of Contract', 'Other')),
    StartDate DATE,
    EndDate DATE,
    CONSTRAINT RentalArrangement_Id_PK PRIMARY KEY(RentalArrangementId),
    CONSTRAINT R_Agreement_Vehicle_Id_FK FOREIGN KEY(VehicleId) REFERENCES Vehicle(VehicleId),
    CONSTRAINT R_Agreement_Driver_Id_FK FOREIGN KEY(DriverId) REFERENCES Driver(DriverId)
);


-------------------- Maintanence Table
CREATE TABLE Maintanence(
    MaintanenceId NUMBER(10),
    RentalArrangementId NUMBER(10),
    MaintanenceType VARCHAR2(20),
        CHECK(MaintanenceType IN('servicing','Repair')),
    CONSTRAINT Maintanence_Id_PK PRIMARY KEY(MaintanenceId),
    CONSTRAINT Maintanence_R_A_Id_FK FOREIGN KEY(RentalArrangementId) REFERENCES RentalArrangement(RentalArrangementId)
);


---------------------- Servicing Table
CREATE TABLE Servicing(
    ServicingId NUMBER(10),
    MaintanenceId NUMBER(10) NOT NULL,
    Cost NUMBER(10),
    CONSTRAINT Servicing_Id_PK PRIMARY KEY(ServicingId),
    CONSTRAINT Maintanence_Servicing_Id_FK FOREIGN KEY(MaintanenceId) REFERENCES Maintanence(MaintanenceId)
);


------------------ TechnicalPerson
CREATE TABLE TechnicalPerson(
    TechnicalPersonId NUMBER(10),
    TechnicalPersonName VARCHAR2(50),
    Contract VARCHAR2(15),
    CONSTRAINT TechnicalPerson_Id_PK PRIMARY KEY(TechnicalPersonId)
);

------------ MaintanenceAndTecPerson Table
CREATE TABLE MaintanenceAndTecPerson(
    TechnicalPersonId NUMBER(10) NOT NULL,
    MaintanenceId NUMBER(10) NOT NULL,
    Total_Cost NUMBER(10),
    CONSTRAINT T_P_Maintanence_Id_FK FOREIGN KEY(TechnicalPersonId) REFERENCES TechnicalPerson(TechnicalPersonId),
    CONSTRAINT Maintanence_T_P_Id_FK FOREIGN KEY(MaintanenceId) REFERENCES Maintanence(MaintanenceId)
);



--------------------- Staff Table
CREATE TABLE Staff(
    StaffId VARCHAR2(3),
    Name VARCHAR2(50),
    CONSTRAINT Staff_Id_PK PRIMARY KEY(StaffId)
);


----------------- MaintanenceAndStaff
CREATE TABLE MaintanenceAndStaff(
    MaintanenceId NUMBER(10),
    StaffId VARCHAR2(3),
    Cost NUMBER(4),
    CONSTRAINT MaintanenceAndStaff_Id_FK FOREIGN KEY(MaintanenceId) REFERENCES Maintanence(MaintanenceId),
    CONSTRAINT Staff_Id_FK FOREIGN KEY(StaffId) REFERENCES Staff(StaffId)
);


--------------------- Parts
CREATE TABLE Parts(
    PartCode VARCHAR2(5),
    PartName VARCHAR2(50),
    Price NUMBER(5),
    CONSTRAINT PartCode_PK PRIMARY KEY(PartCode)
);
-------------------- Repair
CREATE TABLE Repair(
    RepairNum NUMBER(3),
    MaintanenceId NUMBER(10) NOT NULL,
	RepairDate Date,
    TotalRepairCost NUMBER(5),
    CONSTRAINT Repair_Id_PK PRIMARY KEY(RepairNum),
    CONSTRAINT Maintanence_Repair_Id_FK FOREIGN KEY(MaintanenceId) REFERENCES Maintanence(MaintanenceId)
);


---------------------- RepairAndParts
CREATE TABLE RepairAndParts(
    RepairNum NUMBER(10) NOT NULL,
    PartCode VARCHAR2(5) NOT NULL,
    Quantity NUMBER(5),
    CONSTRAINT Repair_Parts_Id_FK FOREIGN KEY(RepairNum) REFERENCES Repair(RepairNum),
    CONSTRAINT PartCode_Repair_FK FOREIGN KEY(PartCode) REFERENCES Parts(PartCode)
);



--===================================================================
--===================================================================
--===================================================================
--===================================================================
--===================================================================



-----------------         STORE PROCEDURE








