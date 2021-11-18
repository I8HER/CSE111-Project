
--Add stats for champion

--Query 1: Print all champion name that in the class Challenger
SELECT C_name
FROM Champion,Class
WHERE CL_name='Challenger' AND CL_classID=C_classID;

--Query 2: Print all champion name that has an original skin
SELECT C_name
FROM Champion
WHERE c_skin LIKE '%Original%';

--Query 3: Print all champion that has more than 2 origin
SELECT C_name
FROM Champion
WHERE C_origin1ID>0 AND C_origin2ID>0;

--Query 4: Print Item that is best on Katarina
SELECT I_name
FROM Item,Champion,Equipment
WHERE C_name='Katarina' AND C_champID=E_champID AND E_itemID=I_itemID;

--Query 5: Print all champion that can use the item giant slayer
SELECT C_name
FROM Champion,Item,Equipment
WHERE I_name='giant slayer' AND I_itemID=E_itemID AND E_champID=C_champID;

--Query 6: Print champion name that has price of 4 and an A in their name
SELECT C_name
FROM cHAMPION
WHERE C_Price=4 AND C_name LIKE '%a%';

--Query 7: Print the name of champion in the team 1
SELECT T_teamID,C_name
FROM Champion,Team
WHERE T_teamID=1 AND T_champID=C_champID;

--Query 8: Print the name of champion from noxus
SELECT C_name
FROM Champion, Region
WHERE R_name='noxus' AND R_regionID=C_regionID;

--Query 9: Print the position of all champion
SELECT C_name, P_name
FROM Champion,Position
WHERE P_positionID=C_positionID;

--Query 10: Print all Champion that are ranged 
SELECT C_name
FROM Champion
WHERE C_range>1;

--Query 11: Print the description of each origin
SELECT O_name,O_comment
FROM Origin;

--Query 12: Print the effect of each class
SELECT CL_name, CL_comment
FROM Class;

--Query 13: Print all champion that is an assassin and syndicate
SELECT C_name, CL_name, O_name
FROM Champion,Class,Origin
WHERE O_originID=C_origin1ID AND O_name='Syndicate' AND CL_name='Assassin' AND CL_classID=
CL_classID

--Query 14: Print all champion that is an adc from the void
SELECT C_name
FROM Champion, Position, Region
WHERE R_name='the void' AND R_regionID=C_regionID AND P_name='adc' AND P_positionID=C_positionID

--Query 15: Insert a new Academia team
INSERT INTO Team(T_ID,T_teamID,T_champID)
VALUES (7,3,3), (8,3,6), (9,3,12);

--Query 16: Add new table Stats
DROP TABLE Stats;
CREATE TABLE Stats( S_ChampID  INTEGER,
                    S_HealthStar1 INTEGER,
                    S_HealthStar2 INTEGER,
                    S_HealthStar3 INTEGER,
                    S_AttackStar1 INTEGER,
                    S_AttackStar2 INTEGER,
                    S_AttackStar3 INTEGER,
                    S_Mana INTEGER);

--Query 17: Insert data to Stats
INSERT INTO Stats(S_ChampID,S_HealthStar1,S_HealthStar2,S_HealthStar3,S_AttackStar1,S_AttackStar2,S_AttackStar3,S_Mana)
VALUES (1,650,1170,2106,60,108,194,95), 
(2,700,1260,2268,46,82,147,50),
(3,650,1170,2106,50,90,162,40),
(4,650,1170,2106,60,108,194,80),
(5,800,1440,2592,50,90,162,100),
(6,750,1350,2430,45,81,146,60),
(7,750,1350,2430,40,72,130,160),
(8,750,1350,2430,50,90,162,180),
(9,850,1530,2754,70,126,227,140),
(10,700,1260,2268,50,90,162,180),
(11,888,1598,2877,88,158,285,99),
(12,800,1440,2592,50,90,162,200),
(13,900,1620,2916,60,108,194,150),
(14,800,1440,2592,70,126,227,40),
(15,1800,3240,5832,150,270,486,300);

--Query 18: Print all champion stats
SELECT C_name, S_HealthStar1,S_HealthStar2,S_HealthStar3,S_AttackStar1,S_AttackStar2,S_AttackStar3,S_Mana
FROM Champion,Stats
WHERE C_champID=S_ChampID;

--Query 19: Print all champion that has higher health at star 1
SELECT C_name,MAX(S_HealthStar1)
FROM Champion,Stats
WHERE S_ChampID=C_champID

--Query 20: Print the average attack of one cost champion at star 1
SELECT AVG(S_AttackStar1)
FROM Champion,Stats
WHERE C_champID=S_ChampID AND C_price=1