# Hervey-Car-Hire-Database
=======================================

Harvey car Hire company's database.


# Scenario
=========================================

Harvey Car Hire is a vehicle hire company based in London, United Kingdom. They want you to develop a new database for their core business. This summary and the examples of data that following it may be taken as indicating aspects of the system requirements for this assignment. 
 
Harvey Car Hire rents cars and other motorised vehicles to corporate customers in large numbers.  A customer will have one or more fleets of vehicles, which will consist of one or more vehicles. Vehicles are defined as being of a particular type such as small car, medium car, large car or van.  
 
As well as renting the cars Harvey Car Hire manage the fleets for their customers. A particular vehicle will be assigned by a driver. The terms of that assignment are defined as a rental arrangement. Rental arrangements are defined by type (‘One-off’, ’Monthly’, 
’Duration of Contract’ and ’Other’).   
 
Harvey Car Hire also oversees the maintenance of the vehicles by carrying out repairs when they are needed.  
 
A vehicle repair will involve one or more members of staff, and can involve one or more parts.  
 
The system should be capable of storing all the information needed for Harvey Car Hire to carry out their business. A number of additional requirements are outlined below, including data entry and queries. 
 
Please note also that all SQL scripts should be shown along with their results. 
 
 
Please Note: The data shown in the assignment is not necessarily normalised, and that it is the candidate’s task to organise the data in the most optimal way possible. For example, the paper records shown below will not necessarily map directly to database tables. The candidate is expected to use these tables as a starting point for their own normalisation and optimisation of the Harvey Car Hire system.  
 
Please state any assumptions you have made about the scenario.  
 
 
 
 
.  
# Below are a sample of the paper records currently kept by Harvey Car Hire. They should be taken as representative of a much larger data set.   
===========================================

1. Vehicle Fleet Records 
  
FleetID ||	CustomerID ||	CustomerName ||	VehicleModel ||	VehicleRegistration ||	VehicleTypeCode ||	VehicleTypeDescription

201 --	23 --	Ricardo Enterprises --	Ford Focus --	S10 URP --	Small Car --	Any supermini, small family car or city car.

201 --	23 --	Ricardo Enterprises --	Kia Picanto --	S30 KLL --	Small Car --	Any supermini, small family car or city car. 

201 --	23 --	Ricardo Enterprises --	Fort Transit --	S123 UTT --	Van --	Any van 

203 --	23 --	Ricardo Enterprises --	BMW 5 Series --	S20 UYT --	Large Car --	Any people mover, small or large MPV 

203 --	23 --	Ricardo Enterprises --	Kia Picanto --	L99 5TT --	Small Car	-- Any supermini, small family car or city car. 

301 --	11 --	Brown Estate Agents --	Ford Transit --	L87 WXH --	Van --	Any van 

301 --	11 --	Brown Estate Agents --	Fiat Uno --	S20 UHH --	Small Car --	Any supermini, small family car or city car. 

400 --	12 --	White Holdings --	Chevrolet Malibu --	S50 RSE --	Medium Car --	Midsized, intermediate or large family car 
 
NOTE: Ricardo Enterprises has two different fleets.  
 
 
# Rental Arrangement
==================================================

DriverID --	DriverName --	RentalArrangementType --	FleetID --	StartDate --	EndDate --	VehicleRegistration 

D77 --	Leon Garfield --	One-off --	201 --	01-MAR-2017 --	01-MAR-2018 --	S10 URP

D99 --	Oliver Morton --	One-off --	201 --	01-MAR-2017 --	01-MAR-2018 --	S30 KLL

D81 --	Edgar West --	Duration of Contract --	201 --	03-APR-2017 	--	S123 UTT 

D99 --	Mavis Cutter --	Other --	203 --	01-MAR-2017 --	01-MAR-2021 --	S20 UYT

D100 --	Mark Smith --	Other --	203 --	01-MAR-2017 --	01-DEC-2017 --	L99 5TT 

D101 --	Jeff Moon --	Monthly --	301 --	01-FEB-2017 --	02-MAR-2018 --	L87 WXH 
 
 
 
# Document 3. Vehicle Repair Sheet 
============================================

Vehicle Registration: L87 WXH 
Repair Number: 3 
Name of Driver: Jeff Moon 
Address of Driver: 80 Kestrel Rd, SE15 6NQ 
Date of Repair: 01/03/17 
 
 
# Parts Used
====================================================

PartCode --	PartName --	Quantity 

BL -- Back Lights --	2 
FW -- Front Window screen --	1 
BW -- Back Window screen --	1 
SB -- Seat Belt --	 1
 
 
# staff Worked 
======================================================

StaffID --	Name

S78 -- Dave Smith
S23 -- Holly Leman 
 
 
# Note
==============================================

This document is for a single repair event on the given date. A repair event may use a number of different parts as indicated. It may involve one or more staff.  
 
Over time each vehicle may have a number of different repairs and this is indicated by a repair number. Therefore the unique identifier for each repair event would be the combination of the vehicle registration and the repair number.  
 
End of Case Study 
 	 
 
 
# Requirements
=============================================
a. Produce an entity relationship model for the proposed database system for Harvey 
Car Hire .
b.	Provide a discussion of the normalisation taken to produce a set of third normal form relations for the proposed system. You should explain normalisation and how you have applied it.
c.	Produce a data dictionary for your proposed system. 
 
 ===============================================
 
a)	Create the tables in SQL and show the CREATE scripts as running in the programming environment.
b)	Create data on all the customers, fleets and vehicles. Provide a screen shot of the data. 
c)	Create data for drivers shown in assignment. Provide a screen shot of the data.
d)	Create data on all the fleets. Provide a screen shot of the data. 
e)	Create data showing all the staff. Provide a screen shot of the data. 
f)	Write a query that selects the registration numbers for all small cars in the fleet for customer Brown Estate Agents.
g)	Write a query that selects the start dates for all vans in every fleet. 
h)	Write a query that shows the details of the repairs shown in document 3. 
i)	Write a query that counts all the vehicles of type ‘van’
j)	Write a query to select driver name, fleet id and vehicle registration for all rental arrangements that began on the 1st of March 2017 
k)	Update the driver’s name ‘Mavis Cutter’ to ‘Mavis Drinkfield’. 
l)	Alter the database so that it keeps a record of insurance document id numbers for all drivers.
 
