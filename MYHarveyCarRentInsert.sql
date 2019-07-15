




--######################################## OwnerCustomer
#########################################
INSERT INTO OwnerCustomer 
(OwnerCustomerId,OwnerName,OwnerAddress,OwnerEmail,OwnerContact) 
VALUES (,'','','','');





#########################################

INSERT INTO OwnerFleet 
( OwnerFleetId, OwnerCustomerId, StartDate, EndDate ) 
VALUES ( , '' , '' , '' );








#########################################

INSERT INTO OwnCustPay
( OwnCustPayID, OwnerFleetId, PaymentDate, PaidAmount )
	VALUES ( , '' , '' , '' );


#########################################

INSERT INTO CorporateCustomer ( CorporateCustomerId, CorporateName, CorporateAddress, CorporateEmail,CorporateContact ) VALUES ( 23, 'Ricardo Enterprises', NULL , NULL, NULL );
INSERT INTO CorporateCustomer ( CorporateCustomerId, CorporateName, CorporateAddress, CorporateEmail,CorporateContact ) VALUES ( 11, 'Brown Estate Agents', NULL , NULL, NULL );
INSERT INTO CorporateCustomer ( CorporateCustomerId, CorporateName, CorporateAddress, CorporateEmail,CorporateContact ) VALUES ( 12, 'White Holdings', NULL , NULL , NULL );


SELECT * FROM CorporateCustomer



#########################################

INSERT INTO CorporateFleet ( CorpFleetId, CorporateCustomerId, StartDate, EndDate) VALUES ( 201, '23', NULL , NULL );
INSERT INTO CorporateFleet ( CorpFleetId, CorporateCustomerId, StartDate, EndDate) VALUES ( 203, '23', NULL , NULL );
INSERT INTO CorporateFleet ( CorpFleetId, CorporateCustomerId, StartDate, EndDate) VALUES ( 301, '11', NULL , NULL );
INSERT INTO CorporateFleet ( CorpFleetId, CorporateCustomerId, StartDate, EndDate)VALUES ( 400, '12', NULL , NULL );

SELECT * FROM CorporateFleet



#########################################

INSERT INTO CorpCustPay ( CorpCustPayID , CorpFleetId , PaymentDate , PaidAmount ) VALUES ( , '' , '' , '' );





#########################################
-- --------*************** VehicleRegistration => VehicleReg

INSERT INTO Vehicle (VehicleId, VehicleModel, VehicleReg, VehicleTypeCode ) VALUES (1,'Ford Focus','S10 URP','Small');
INSERT INTO Vehicle (VehicleId, VehicleModel, VehicleReg, VehicleTypeCode ) VALUES (2,'Kia Picanto','S30 KLL','Small');
INSERT INTO Vehicle (VehicleId, VehicleModel, VehicleReg, VehicleTypeCode ) VALUES (3,'Fort Transit','S123 UTT','Van');
INSERT INTO Vehicle (VehicleId, VehicleModel, VehicleReg, VehicleTypeCode ) VALUES (4,'BMW 5 Series','S20 UYT','Large');
INSERT INTO Vehicle (VehicleId, VehicleModel, VehicleReg, VehicleTypeCode ) VALUES (5,'Kia Picanto','L99 5TT','Small');
INSERT INTO Vehicle (VehicleId, VehicleModel, VehicleReg, VehicleTypeCode ) VALUES (6,'Ford Transit','L87 WXH','Van');
INSERT INTO Vehicle (VehicleId, VehicleModel, VehicleReg, VehicleTypeCode ) VALUES (7,'Fiat Uno','S20 UHH','Small');
INSERT INTO Vehicle (VehicleId, VehicleModel, VehicleReg, VehicleTypeCode ) VALUES (8,'Chevrolet Malibu','S50 RSE','Small');


SELECT * FROM Vehicle



#########################################

INSERT INTO VehicleDesc ( VehicleDescID, VehicleDescription) VALUES (1,'Any supermini, small family car or city car');
INSERT INTO VehicleDesc ( VehicleDescID, VehicleDescription) VALUES (2,'Midsized, intermediate or large family car');
INSERT INTO VehicleDesc ( VehicleDescID, VehicleDescription) VALUES (3,'Any people mover, small or large MPV');
INSERT INTO VehicleDesc ( VehicleDescID, VehicleDescription) VALUES (4,'Any van');


SELECT * FROM VehicleDesc



#########################################

INSERT INTO VehicleAndDesc ( VehicleID, VehicleDescID ) VALUES ( 1, 1);
INSERT INTO VehicleAndDesc ( VehicleID, VehicleDescID ) VALUES ( 2, 1);
INSERT INTO VehicleAndDesc ( VehicleID, VehicleDescID ) VALUES ( 3, 4);
INSERT INTO VehicleAndDesc ( VehicleID, VehicleDescID ) VALUES ( 4, 3);
INSERT INTO VehicleAndDesc ( VehicleID, VehicleDescID ) VALUES ( 5, 1);
INSERT INTO VehicleAndDesc ( VehicleID, VehicleDescID ) VALUES ( 6, 4);
INSERT INTO VehicleAndDesc ( VehicleID, VehicleDescID ) VALUES ( 7, 1);
INSERT INTO VehicleAndDesc ( VehicleID, VehicleDescID ) VALUES ( 8, 2);


SELECT * FROM VehicleAndDesc


#########################################

INSERT INTO OwnerFleetAndVehicle ( OwnerFleetId, VehicleId ) VALUES ( , );





#########################################

INSERT INTO CorpFleetAndVehicle ( CorpFleetId , VehicleId ) VALUES ( 201, 1);
INSERT INTO CorpFleetAndVehicle ( CorpFleetId , VehicleId ) VALUES ( 201, 2);
INSERT INTO CorpFleetAndVehicle ( CorpFleetId , VehicleId ) VALUES ( 201, 3);
INSERT INTO CorpFleetAndVehicle ( CorpFleetId , VehicleId ) VALUES ( 203, 4);
INSERT INTO CorpFleetAndVehicle ( CorpFleetId , VehicleId ) VALUES ( 203, 5);
INSERT INTO CorpFleetAndVehicle ( CorpFleetId , VehicleId ) VALUES ( 301, 6);
INSERT INTO CorpFleetAndVehicle ( CorpFleetId , VehicleId ) VALUES ( 301, 7);
INSERT INTO CorpFleetAndVehicle ( CorpFleetId , VehicleId ) VALUES ( 400, 8);


SELECT * FROM CorpFleetAndVehicle



#########################################

INSERT INTO Driver ( DriverId , DriverName , DriverAddress , DriverContact ) VALUES ( 'D77', 'Leon Garfield' , NULL , NULL );
INSERT INTO Driver ( DriverId , DriverName , DriverAddress , DriverContact ) VALUES ( 'D99', 'Oliver Morton' ,NULL , NULL );
INSERT INTO Driver ( DriverId , DriverName , DriverAddress , DriverContact ) VALUES ( 'D81', 'Edgar West' , NULL , NULL );
INSERT INTO Driver ( DriverId , DriverName , DriverAddress , DriverContact ) VALUES ( 'D98', 'Marvis Cutter' , NULL , NULL );
INSERT INTO Driver ( DriverId , DriverName , DriverAddress , DriverContact ) VALUES ( 'D100', 'Mark Smith' , NULL , NULL );
INSERT INTO Driver ( DriverId , DriverName , DriverAddress , DriverContact ) VALUES ( 'D101', 'Jeff Moon' , '80 Kestrel Rd, SE15 6NQ' , '2580147' );


SELECT * FROM Driver



#########################################

INSERT INTO DriverPayment(DriverPaymentId, DriverId, PaymentDate, PaidAmount) VALUES (,'','','');





#########################################

INSERT INTO RentalArrangement (RentalArrangementId, VehicleId, DriverId, RentalArrangementType, StartDate, EndDate) VALUES (1, 1 , 'D77', 'One-off', (TO_DATE('01-MAR-2017','DD-MM-YYYY')) , (TO_DATE('01-MAR-2018','DD-MM-YYYY')));
INSERT INTO RentalArrangement (RentalArrangementId, VehicleId, DriverId, RentalArrangementType, StartDate, EndDate) VALUES (2, 2 , 'D99', 'One-off', (TO_DATE('01-MAR-2017','DD-MM-YYYY')) , (TO_DATE('01-MAR-2018','DD-MM-YYYY')));
INSERT INTO RentalArrangement (RentalArrangementId, VehicleId, DriverId, RentalArrangementType, StartDate, EndDate) VALUES (3, 3 , 'D81', 'Duration of Contract', (TO_DATE('03-APR-2017','DD-MM-YYYY')) , NULL );
INSERT INTO RentalArrangement (RentalArrangementId, VehicleId, DriverId, RentalArrangementType, StartDate, EndDate) VALUES (4, 4 , 'D98', 'Other', (TO_DATE('01-MAR-2017','DD-MM-YYYY')) , (TO_DATE('01-MAR-2021','DD-MM-YYYY')));
INSERT INTO RentalArrangement (RentalArrangementId, VehicleId, DriverId, RentalArrangementType, StartDate, EndDate) VALUES (5, 5 , 'D100', 'Other', (TO_DATE('01-MAR-2017','DD-MM-YYYY')) , (TO_DATE('01-DEC-2017','DD-MM-YYYY')));
INSERT INTO RentalArrangement (RentalArrangementId, VehicleId, DriverId, RentalArrangementType, StartDate, EndDate) VALUES (6, 6 , 'D101', 'Monthly', (TO_DATE('01-FEB-2017','DD-MM-YYYY')) , (TO_DATE('02-MAR-2018','DD-MM-YYYY')));

SELECT * FROM RentalArrangement



#########################################

INSERT INTO Maintanence (MaintanenceId, RentalArrangementId, MaintanenceType) VALUES ( 1, 6, 'Repair');


SELECT * FROM Maintanence;



#########################################

INSERT INTO Servicing ( ServicingId, MaintanenceId, Cost ) VALUES ( , '' , '' );





#########################################

INSERT INTO TechnicalPerson ( TechnicalPersonId , TechnicalPersonName , Contract ) VALUES ( '' , '' , '' );





#########################################

INSERT INTO MaintanenceAndTecPerson ( TechnicalPersonId , MaintanenceId , Cost)	VALUES ( '' , '' , '' );





#########################################

-- INSERT INTO MaintanencePay( MaintanencePayId , MaintanenceId , PaymentDate , PaidAmount ) VALUES (,'','','');




#########################################

INSERT INTO Staff(StaffId,Name)	VALUES('S78','Dave Smith');
INSERT INTO Staff(StaffId,Name)	VALUES('S23','Holly Leman');

SELECT * FROM Staff;




#########################################

INSERT INTO MaintanenceAndStaff (MaintanenceId, StaffId, Cost) VALUES ( 1 , 'S78' , NULL );
CREATE OR REPLACE VIEW VW_RepairCost 
AS
SELECT 
'Repair Cost : ' || SUM(R.Cost) Repair
FROM Maintanence M
JOIN Repair R ON(R.MaintanenceId = M.MaintanenceId)
JOIN RepairAndParts RP ON(RP.RepairNum = R.RepairNum)
JOIN Parts P ON(P.PartCode = RP.PartCODE)
UNION
SELECT
'Staff Cost : ' || SUM(MS.Cost) MaintanenceAndStaff
FROM Maintanence M
JOIN MaintanenceAndStaff MS ON(MS.MaintanenceId = M.MaintanenceId)
JOIN Staff S ON(S.StaffId = MS.StaffId)



SELECT * FROM MaintanenceAndStaff;


#########################################

INSERT INTO Parts ( PartCode , PartName , Price ) VALUES ( 'BL' , 'Back Light' , 75);
INSERT INTO Parts ( PartCode , PartName , Price ) VALUES ( 'FW' , 'Front Window Screen' , 80);
INSERT INTO Parts ( PartCode , PartName , Price ) VALUES ( 'BW' , 'Black Window Screen' , 60);
INSERT INTO Parts ( PartCode , PartName , Price ) VALUES ( 'SB' , 'Seat Belt' , 10);


SELECT * FROM Parts;



#########################################

INSERT INTO Repair ( RepairNum , MaintanenceId , RepairDate, Cost ) VALUES (  3 , 1 , (TO_DATE('01/03/17','DD-MM-YY')) , NULL );


SELECT * FROM Repair;



#########################################

INSERT INTO RepairAndParts ( RepairNum , PartCode , Quantity ) VALUES (  3, 'BL' , 2 );
INSERT INTO RepairAndParts ( RepairNum , PartCode , Quantity ) VALUES (  3, 'FW' , 1 );
INSERT INTO RepairAndParts ( RepairNum , PartCode , Quantity ) VALUES (  3, 'BW' , 1 );
INSERT INTO RepairAndParts ( RepairNum , PartCode , Quantity ) VALUES (  3, 'SB' , NULL );


SELECT * FROM RepairAndParts;


