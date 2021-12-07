CREATE TABLE Champion(
    C_champID DECIMAL(3,0) not null,
    C_name char(20) not null,
    C_skin char(30) not null,
    C_range DECIMAL(2,0) not null,
    C_origin1ID DECIMAL(2,0) not null,
    C_origin2ID DECIMAL(2,0) not null,
    C_classID DECIMAL(2,0) not null,
    C_class2ID DECIMAL(2,0) not null,
    C_regionID DECIMAL(2,0) not null,
    C_positionID DECIMAL(2,0) not null,
    C_Price DECIMAL(2,0) not null
);
CREATE TABLE Position(
    P_positionID DECIMAL(3,0) not null,
    P_name char(20) not null
);
CREATE TABLE Origin(
    O_originID DECIMAL(3,0) not null,
    O_name char(20) not null,
    O_comment char(50) not null
);
CREATE TABLE Class(
    CL_classID DECIMAL(3,0) not null,
    CL_name char(20) not null,
    CL_comment char(50) not null
);
CREATE TABLE Item(
    I_itemID DECIMAL(3,0) not null,
    I_name char(20) not null
);
CREATE TABLE Equipment(
    E_equipmentID DECIMAL(3,0) not null,
    E_itemID DECIMAL(3,0) not null,
    E_champID DECIMAL(3,0) not null
);
CREATE TABLE Region(
    R_regionID DECIMAL(3,0) not null,
    R_name char(20) not null
);
CREATE TABLE Team(
    T_ID DECIMAL(3,0) not null,
    T_teamID DECIMAL(3,0) not null,
    T_champID DECIMAL(3,0) not null
);

INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(1,'Akali','Crime City Nightmare Akali',1,13,15,2,14,4,6,5);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(2,'Blitzcrank','Original Blitzcrank',1,10,15,3,9,13,1,2);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(3,'Braum','Crime City Braum',1,13,15,3,14,11,1,4);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(4,'Caitlyn','Arcane Caitlyn',4,5,15,11,14,7,4,1);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(5,'Camille','Original Camille',1,3,15,5,14,7,3,1);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(6,'Cho-Gath','Original Cho-Gath',1,9,15,4,6,12,1,3);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(7,'Darius','Crime City Nightmare Darius',1,13,15,3,14,6,1,1);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(8,'Dr_Mundo','Original Dr_Mundo',1,2,9,4,14,13,1,4);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(9,'Ekko','Original Ekko',1,10,15,2,14,13,6,3);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(10,'Ezreal','Original Ezreal',4,10,15,8,14,7,4,1);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(11,'Fiora','Pulsefire Fiora',1,5,15,5,14,3,3,4);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(12,'Galio','Debonair Gailo',1,12,15,3,6,3,1,5);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(13,'Gangplank','Original Gangplank',1,8,15,13,14,2,3,3);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(14,'Garen','Battle Academia Garen',1,1,15,9,14,3,3,1);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(15,'Graves','Battle Academia Graves',1,1,15,13,14,2,1,1);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(16,'Heimerdinger','Original Heimerdinger',3,14,15,8,10,7,5,3);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(17,'Illaoi','Original Illaoi',1,8,15,4,14,2,1,1);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(18,'Janna','Hextech Janna',3,10,15,7,10,13,2,4);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(19,'Jayce','Arcane Jayce',1,5,15,8,12,7,3,5);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(20,'Jhin','Original Jhin',4,3,15,11,14,4,4,4);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(21,'Jinx','Arcane Jinx',4,10,11,13,14,13,4,5);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(22,'Kaisa','Original Kaisa',3,9,15,5,14,12,4,5);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(23,'Kassadin','Original Kassadin',1,9,15,9,14,12,3,1);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(24,'Katarina','Battle Academia Katarina',1,1,15,2,14,6,6,2);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(25,'Kog-Maw','Arcanist Kog_Maw',3,9,15,11,13,12,4,2);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(26,'Leona','Battle Academia Leona',1,1,15,3,14,3,1,3);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(27,'Lissandra','Blade Queen Lissandra',3,2,15,10,14,11,5,3);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(28,'Lulu','Original Lulu',2,14,15,7,14,1,2,2);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(29,'Lux','Battle Academia Lux',4,1,15,1,14,3,5,4);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(30,'Malzahar','Original Malzahar',4,9,15,1,14,12,5,3);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(31,'Miss Fortune','Captain Fortune',4,8,15,11,14,2,5,3);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(32,'Orianna','Original Orianna',4,3,15,7,14,13,5,4);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(33,'Poppy','Original Poppy',1,14,15,3,14,1,1,1);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(34,'Quinn','Corsair Quinn',4,8,15,5,14,3,4,2);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(35,'Samira','Original Samira',3,7,15,5,14,6,4,3);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(36,'Seraphine','Original Seraphine',4,12,15,8,14,7,2,4);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(37,'Shaco','Crime City Nightmare Shaco',1,13,15,2,14,4,6,3);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(38,'Singed','Original Singed',1,2,15,8,14,13,1,1);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(39,'Sion','Original Sion',1,7,15,6,9,6,3,4);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(40,'Swain','Original Swain',2,7,15,1,14,6,5,2);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(41,'Tahm Kench','Original Tahm Kench',1,6,8,4,14,2,1,5);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(42,'Talon','Original Talon',1,7,15,2,14,6,6,2);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(43,'Taric','Armor of the Fifth Age Taric',1,12,15,7,14,10,2,3);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(44,'Tristana','Original Tristana',4,14,15,11,14,1,4,2);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(45,'Trundle','Junkyard Trundle',1,10,15,4,14,11,3,2);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(46,'Twisted Fate','Crime City Nightmare Twisted Fate',3,13,15,1,14,2,5,1);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(47,'Twitch','Original Twitch',3,2,15,2,14,13,6,1);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(48,'Urgot','Original Urgot',3,2,15,13,14,13,4,4);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(49,'Vex','Original Vex',2,14,15,1,14,1,5,3);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(50,'Vi','Arcane Vi',1,5,11,4,14,7,3,2);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(51,'Viktor','Original Viktor',4,2,15,1,14,13,5,5);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(52,'Warwick','Original Warwick',1,2,15,5,14,13,3,2);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(53,'Yone','Battle Academia Yone',1,1,15,5,14,4,3,4);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(54,'Zac','Original Zac',1,2,15,4,14,13,1,3);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(55,'Ziggs','Original Ziggs',3,10,14,1,14,1,5,1);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(56,'Zilean','Original Zilean',3,3,14,8,14,4,5,2);
INSERT INTO Champion(C_champID,C_name,C_skin,C_range,C_origin1ID,C_origin2ID,C_classID,C_class2ID,C_regionID,C_positionID,C_Price)
VALUES(57,'Zyra','Crime City Nightmare Zyra',4,13,15,10,14,5,2,2);

INSERT INTO Position(P_positionID, P_name)
VALUES(1,'tank');
INSERT INTO Position(P_positionID, P_name)
VALUES(2,'support');
INSERT INTO Position(P_positionID, P_name)
VALUES(3,'warrior');
INSERT INTO Position(P_positionID, P_name)
VALUES(4,'adc');
INSERT INTO Position(P_positionID, P_name)
VALUES(5,'apc');
INSERT INTO Position(P_positionID, P_name)
VALUES(6,'assassin');

INSERT INTO Origin(O_originID, O_name, O_comment)
VALUES(1,'Academy','bouns attack damage');
INSERT INTO Origin(O_originID, O_name, O_comment)
VALUES(2,'Chemtech','low hp increase attack speed & regenerate');
INSERT INTO Origin(O_originID, O_name, O_comment)
VALUES(3,'Clockwork','bonus attack speed');
INSERT INTO Origin(O_originID, O_name, O_comment)
VALUES(4,'Cuddly','attaches');
INSERT INTO Origin(O_originID, O_name, O_comment)
VALUES(5,'Enforcer','stun at start');
INSERT INTO Origin(O_originID, O_name, O_comment)
VALUES(6,'Glutton','feed him!');
INSERT INTO Origin(O_originID, O_name, O_comment)
VALUES(7,'Imperial','bonus damage for Tyrant');
INSERT INTO Origin(O_originID, O_name, O_comment)
VALUES(8,'Mercenary','treasure!');
INSERT INTO Origin(O_originID, O_name, O_comment)
VALUES(9,'Mutant','unique each game');
INSERT INTO Origin(O_originID, O_name, O_comment)
VALUES(10,'Scrap','full item & shield');
INSERT INTO Origin(O_originID, O_name, O_comment)
VALUES(11,'Sister','one-up each other');
INSERT INTO Origin(O_originID, O_name, O_comment)
VALUES(12,'Socialite','spotlight');
INSERT INTO Origin(O_originID, O_name, O_comment)
VALUES(13,'Syndicate','cloaked in shadow');
INSERT INTO Origin(O_originID, O_name, O_comment)
VALUES(14,'Yordle','free yordle');
INSERT INTO Origin(O_originID, O_name, O_comment)
VALUES(15,'Null','not everyone have 2 origins');

INSERT INTO Class(CL_classID, CL_name, CL_comment)
VALUES(1,'Arcanist','increased ap');
INSERT INTO Class(CL_classID, CL_name, CL_comment)
VALUES(2,'Assassin','leap');
INSERT INTO Class(CL_classID, CL_name, CL_comment)
VALUES(3,'Bodyguard','bonus armor');
INSERT INTO Class(CL_classID, CL_name, CL_comment)
VALUES(4,'Bruiser','bonus hp');
INSERT INTO Class(CL_classID, CL_name, CL_comment)
VALUES(5,'Challenger','bonus attack speed');
INSERT INTO Class(CL_classID, CL_name, CL_comment)
VALUES(6,'Colossus','reduce 25%');
INSERT INTO Class(CL_classID, CL_name, CL_comment)
VALUES(7,'Enchanter','bonus mr');
INSERT INTO Class(CL_classID, CL_name, CL_comment)
VALUES(8,'Innovator','bulid');
INSERT INTO Class(CL_classID, CL_name, CL_comment)
VALUES(9,'Protector','gain shield');
INSERT INTO Class(CL_classID, CL_name, CL_comment)
VALUES(10,'Scholar','restore mana');
INSERT INTO Class(CL_classID, CL_name, CL_comment)
VALUES(11,'Sniper','increase damage by distance');
INSERT INTO Class(CL_classID, CL_name, CL_comment)
VALUES(12,'Transformer','2 forms');
INSERT INTO Class(CL_classID, CL_name, CL_comment)
VALUES(13,'Twinshot','bonus ad');
INSERT INTO Class(CL_classID, CL_name, CL_comment)
VALUES(14,'Null','not everyone have 2 class');

INSERT INTO Item(I_itemID, I_name)
VALUES(1,'giant slayer');
INSERT INTO Item(I_itemID, I_name)
VALUES(2,'hextech gunblade');
INSERT INTO Item(I_itemID, I_name)
VALUES(3,'guardian angle');
INSERT INTO Item(I_itemID, I_name)
VALUES(4,'bramble vest');
INSERT INTO Item(I_itemID, I_name)
VALUES(6,'infinity edge');
INSERT INTO Item(I_itemID, I_name)
VALUES(7,'rabadons deathcap');
INSERT INTO Item(I_itemID, I_name)
VALUES(8,'chalice of power');
INSERT INTO Item(I_itemID, I_name)
VALUES(9,'jeweled gauntlet');
INSERT INTO Item(I_itemID, I_name)
VALUES(10,'spear of shojin');
INSERT INTO Item(I_itemID, I_name)
VALUES(11,'bloodthirster');
INSERT INTO Item(I_itemID, I_name)
VALUES(12,'guinsoos rageblade');
INSERT INTO Item(I_itemID, I_name)
VALUES(13,'titans resolve');
INSERT INTO Item(I_itemID, I_name)
VALUES(14,'warmogs armor');
INSERT INTO Item(I_itemID, I_name)
VALUES(15,'dragons claw');
INSERT INTO Item(I_itemID, I_name)
VALUES(16,'ionic spark');
INSERT INTO Item(I_itemID, I_name)
VALUES(17,'frozen heart');
INSERT INTO Item(I_itemID, I_name)
VALUES(18,'blue buff');

INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(1,1,2);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(2,2,14);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(3,3,15);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(4,4,10);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(5,5,2);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(6,6,14);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(7,7,14);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(8,8,15);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(9,9,17);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(10,10,2);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(11,11,6);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(12,12,14);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(13,13,6);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(14,14,11);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(15,15,1);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(16,16,18);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(17,17,14);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(18,18,10);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(19,19,13);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(20,20,6);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(21,21,3);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(22,22,2);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(23,23,4);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(24,24,16);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(25,25,12);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(26,26,14);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(27,27,6);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(28,28,8);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(29,29,18);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(30,30,2);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(31,31,10);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(32,32,7);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(33,33,14);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(34,34,10);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(35,35,1);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(36,36,9);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(37,37,6);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(38,38,13);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(39,39,9);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(40,40,17);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(41,41,4);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(42,42,17);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(43,43,4);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(44,44,12);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(45,45,11);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(46,46,9);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(47,47,12);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(48,48,12);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(49,49,4);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(50,50,9);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(51,51,10);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(52,52,3);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(53,53,12);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(54,54,8);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(55,55,4);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(56,56,9);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(57,57,9);
INSERT INTO Equipment(E_equipmentID,E_champID,E_itemID)
VALUES(58,58,9);



INSERT INTO Region(R_regionID, R_name)
VALUES(1,'bandle city');
INSERT INTO Region(R_regionID, R_name)
VALUES(2,'bilgewater');
INSERT INTO Region(R_regionID, R_name)
VALUES(3,'demacia');
INSERT INTO Region(R_regionID, R_name)
VALUES(4,'ionia');
INSERT INTO Region(R_regionID, R_name)
VALUES(5,'ixtal');
INSERT INTO Region(R_regionID, R_name)
VALUES(6,'noxus');
INSERT INTO Region(R_regionID, R_name)
VALUES(7,'piltover');
INSERT INTO Region(R_regionID, R_name)
VALUES(8,'shadow isles');
INSERT INTO Region(R_regionID, R_name)
VALUES(9,'shurima');
INSERT INTO Region(R_regionID, R_name)
VALUES(10,'targon');
INSERT INTO Region(R_regionID, R_name)
VALUES(11,'the freljord');
INSERT INTO Region(R_regionID, R_name)
VALUES(12,'the void');
INSERT INTO Region(R_regionID, R_name)
VALUES(13,'zaun');

INSERT INTO Team(T_ID,T_teamID, T_champID)
VALUES(1,1,2);
INSERT INTO Team(T_ID,T_teamID, T_champID)
VALUES(2,1,7);
INSERT INTO Team(T_ID,T_teamID, T_champID)
VALUES(3,1,11);
INSERT INTO Team(T_ID,T_teamID, T_champID)
VALUES(4,1,33);
INSERT INTO Team(T_ID,T_teamID, T_champID)
VALUES(5,2,3);
INSERT INTO Team(T_ID,T_teamID, T_champID)
VALUES(6,2,12);
INSERT INTO Team(T_ID,T_teamID, T_champID)
VALUES(7,2,21);
INSERT INTO Team(T_ID,T_teamID, T_champID)
VALUES(8,2,24);
INSERT INTO Team(T_ID,T_teamID, T_champID)
VALUES(9,2,29);