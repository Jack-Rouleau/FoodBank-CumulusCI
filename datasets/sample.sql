BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Account" VALUES(1,'Sample Account for Entitlements','');
INSERT INTO "Account" VALUES(2,'Stinky Farm','');
INSERT INTO "Account" VALUES(3,'Nice Farm','');
CREATE TABLE "Delivery_Item__c" (
	id INTEGER NOT NULL, 
	"Food_Expiration_Date__c" VARCHAR(255), 
	"Food_Storage__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Delivery__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery_Item__c" VALUES(1,'2023-11-07','Frozen','Ice Cream','1');
INSERT INTO "Delivery_Item__c" VALUES(2,'2023-10-16','Non-refrigerated','Potatoes','1');
INSERT INTO "Delivery_Item__c" VALUES(3,'2023-10-07','Refrigerated','Milk','1');
INSERT INTO "Delivery_Item__c" VALUES(4,'2023-10-03','Non-refrigerated','Brocoli','2');
CREATE TABLE "Delivery__c" (
	id INTEGER NOT NULL, 
	"Scheduled_Date__c" VARCHAR(255), 
	"Status__c" VARCHAR(255), 
	"Account__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery__c" VALUES(1,'2023-10-02T15:00:00.000+0000','Requested','2');
INSERT INTO "Delivery__c" VALUES(2,'2023-09-29T12:45:00.000+0000','Requested','3');
COMMIT;
