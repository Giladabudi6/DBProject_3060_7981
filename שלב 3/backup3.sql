CREATE TABLE commander
(
  comID INT NOT NULL,
  rank VARCHAR(15) NOT NULL,
  numofunitcom INT NOT NULL,
  PRIMARY KEY (comID)
);
 
CREATE TABLE driver
(
  license_number INT NOT NULL,
  drID INT NOT NULL,
  numofunitdri INT NOT NULL,
  comID,
  PRIMARY KEY (drID),
  FOREIGN KEY (comID) REFERENCES commander(comID)
);
 
CREATE TABLE equipment_manager
(
  equID INT NOT NULL,
  expertise VARCHAR(15) NOT NULL,
  numofuniteqi INT NOT NULL,
  comID,
  PRIMARY KEY (equID),
  FOREIGN KEY (comID) REFERENCES commander(comID)
);
 
CREATE TABLE medic
(
  medID INT NOT NULL,
  seniority INT NOT NULL,
  numofunitmed INT NOT NULL,
  comID,
  equID,
  PRIMARY KEY (medID),
  FOREIGN KEY (comID) REFERENCES commander(comID),
  FOREIGN KEY (equID) REFERENCES equipment_manager(equID)
);
 
CREATE TABLE doctor
(
  docID INT NOT NULL,
  license_number INT NOT NULL,
  seniority INT NOT NULL,
  numofunitdoc INT NOT NULL,
  comID,
  equID,
  PRIMARY KEY (docID),
  FOREIGN KEY (comID) REFERENCES commander(comID),
  FOREIGN KEY (equID) REFERENCES equipment_manager(equID)
);
 
CREATE TABLE paramedic
(
  parID INT NOT NULL,
  license_number INT NOT NULL,
  seniority INT NOT NULL,
  numofunitpar INT NOT NULL,
  comID,
  equID,
  PRIMARY KEY (parID),
  FOREIGN KEY (comID) REFERENCES commander(comID),
  FOREIGN KEY (equID) REFERENCES equipment_manager(equID)
);



insert into doctor (docid, numofunitdoc , license_number, seniority) values (688619120, 53, 281629, 34);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (993911247, 82, 234281, 17);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (548593139, 58, 833960, 19);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (218383930, 97, 974309, 15);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (667022288, 92, 507774, 35);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (399362748, 97, 231639, 12);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (838750603, 77, 351322, 12);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (703636194, 58, 125796, 18);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (418893385, 86, 431876, 12);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (971446708, 54, 650516, 26);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (260235153, 84, 775131, 9);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (532918789, 51, 844804, 31);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (577124290, 93, 335234, 5);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (766746895, 87, 726107, 20);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (216309955, 69, 239981, 30);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (366649427, 60, 777612, 26);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (436369012, 69, 862776, 24);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (679111943, 55, 803688, 29);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (549472743, 64, 331070, 23);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (522325116, 80, 650248, 2);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (477675772, 86, 887727, 6);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (233866319, 79, 255315, 21);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (581255648, 83, 180489, 17);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (914771070, 55, 752512, 30);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (230699733, 54, 902155, 15);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (868880719, 84, 492807, 7);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (296792603, 65, 797130, 3);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (549031907, 87, 753463, 36);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (603091024, 91, 400530, 29);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (430363596, 99, 823160, 2);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (655059484, 64, 520274, 22);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (621690437, 87, 127409, 36);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (898171865, 84, 220605, 3);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (474675784, 83, 347837, 29);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (463547219, 81, 911771, 30);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (382872727, 95, 166984, 25);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (202120670, 63, 920070, 39);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (411476785, 55, 916644, 5);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (271064562, 70, 345955, 18);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (352180230, 50, 697864, 11);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (312231605, 69, 582410, 13);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (331518934, 64, 361719, 3);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (321703997, 59, 309800, 27);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (963699968, 68, 239890, 34);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (962070187, 81, 963971, 25);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (790206670, 65, 180025, 15);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (850347584, 60, 367651, 18);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (655571819, 100, 703376, 11);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (442841269, 90, 667691, 24);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (465350193, 95, 868029, 36);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (332860510, 96, 382914, 19);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (698098271, 83, 672774, 21);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (364202997, 78, 322540, 11);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (898452201, 98, 130273, 16);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (915465588, 62, 950228, 36);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (536400272, 97, 792018, 30);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (852013259, 60, 605154, 33);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (783618053, 64, 444135, 23);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (922830711, 87, 187069, 31);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (242380951, 59, 310537, 9);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (848976876, 70, 786390, 18);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (390836647, 77, 618533, 13);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (875744674, 93, 201500, 9);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (669633379, 72, 622252, 22);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (948465728, 94, 683648, 4);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (514408905, 65, 563438, 10);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (249438243, 64, 295588, 31);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (236763788, 79, 276702, 15);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (910160367, 53, 116959, 21);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (505250445, 100, 113699, 8);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (371701313, 62, 275888, 24);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (282126592, 63, 887008, 19);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (645689062, 76, 803499, 4);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (799420579, 81, 643786, 39);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (358851785, 67, 657655, 11);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (635656788, 75, 714898, 16);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (767358207, 84, 957286, 5);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (926811331, 70, 763689, 4);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (437049965, 79, 147129, 17);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (575591737, 63, 251597, 30);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (295822795, 78, 416729, 17);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (831344011, 99, 250632, 17);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (873120277, 64, 925692, 13);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (582834726, 53, 182525, 11);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (384122349, 96, 238425, 28);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (333361975, 54, 230102, 35);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (583731345, 59, 868680, 10);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (485921453, 65, 735050, 20);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (515464458, 51, 864984, 26);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (692647298, 87, 155039, 28);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (727273630, 90, 941274, 4);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (702945870, 86, 208668, 23);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (686901818, 63, 903643, 23);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (756643635, 84, 901755, 24);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (847001903, 98, 373827, 4);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (543823442, 60, 255387, 3);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (231349276, 88, 236327, 27);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (923995755, 51, 630594, 11);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (963564304, 68, 565798, 27);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (957377198, 54, 641177, 21);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (278778322, 54, 951545, 26);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (928548116, 66, 522543, 15);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (204573138, 78, 543222, 15);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (736462160, 90, 183377, 18);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (924809015, 56, 743874, 33);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (631993184, 81, 186497, 8);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (944159739, 74, 339652, 20);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (694350211, 76, 405470, 33);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (919313833, 63, 856543, 2);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (631699331, 83, 919145, 1);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (806890118, 86, 735500, 20);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (610938742, 88, 231230, 22);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (973981902, 66, 760857, 23);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (906115333, 53, 975955, 3);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (769175651, 65, 733359, 22);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (489609108, 90, 656459, 24);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (763736310, 80, 159163, 34);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (358506692, 72, 456685, 24);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (778155531, 82, 332963, 24);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (344146943, 94, 994805, 40);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (893740208, 76, 323150, 28);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (423563793, 83, 393047, 37);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (341353205, 92, 762309, 8);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (985846158, 69, 483882, 34);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (527765712, 79, 469332, 24);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (638597255, 76, 686519, 12);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (249035037, 99, 716733, 11);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (719764911, 81, 435978, 39);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (667749669, 68, 219706, 12);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (490238273, 68, 654365, 15);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (659881509, 65, 985544, 8);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (691197891, 65, 811375, 13);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (708666900, 61, 507429, 3);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (710314275, 67, 308710, 36);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (607977348, 85, 570644, 30);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (664320403, 75, 172810, 17);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (988245328, 76, 169765, 16);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (787458013, 81, 835266, 22);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (337866289, 67, 847950, 15);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (352583875, 84, 315205, 7);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (200439126, 61, 178808, 7);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (978695153, 99, 392711, 13);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (402314024, 51, 355495, 5);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (583973222, 97, 956124, 16);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (520209564, 98, 925157, 37);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (880697827, 78, 366757, 2);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (694349637, 60, 812922, 24);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (268903252, 70, 548556, 6);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (279568135, 70, 229740, 15);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (636136301, 61, 384427, 19);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (350840858, 76, 926605, 14);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (537360106, 87, 469952, 12);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (200758947, 94, 545036, 20);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (340765092, 65, 717908, 26);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (630110954, 68, 925553, 5);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (560533474, 83, 334656, 40);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (838533849, 61, 725605, 3);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (759985031, 83, 364114, 15);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (641307488, 65, 956246, 32);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (434818722, 61, 865302, 35);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (583541087, 77, 137891, 39);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (914270193, 97, 998120, 26);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (740013821, 77, 777030, 25);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (820627707, 78, 502853, 16);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (857524937, 59, 801955, 26);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (442833478, 76, 333064, 7);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (998644536, 62, 280417, 6);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (450510233, 66, 912589, 29);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (396662561, 67, 261126, 33);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (301180706, 75, 166173, 24);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (516486659, 91, 303816, 39);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (260110154, 79, 717999, 26);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (471691401, 68, 794866, 17);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (615822075, 58, 628339, 22);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (703967785, 98, 430380, 35);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (835454862, 63, 344978, 38);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (420721173, 89, 219206, 30);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (525434532, 80, 612638, 3);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (623218341, 73, 601497, 3);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (653143580, 63, 306325, 9);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (242315187, 63, 535006, 36);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (909628957, 95, 753500, 10);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (878735517, 99, 569489, 28);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (640677061, 52, 970080, 5);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (889351117, 51, 813415, 29);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (935547897, 92, 861837, 37);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (393967251, 91, 596528, 35);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (670456762, 61, 108942, 21);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (994309732, 83, 789591, 2);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (825247454, 79, 142008, 1);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (569096064, 64, 238941, 38);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (465085546, 88, 194403, 10);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (680053971, 91, 154793, 35);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (859444555, 79, 534705, 35);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (617237487, 88, 736890, 31);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (855318206, 89, 913571, 18);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (446180330, 58, 614797, 36);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (216483449, 70, 612174, 14);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (492147047, 79, 844163, 6);
insert into doctor (docid, numofunitdoc , license_number, seniority) values (905968778, 66, 728851, 24);



insert into driver (drid, numofunitdri , license_number) values (754850310, 81, 2693421);
insert into driver (drid, numofunitdri , license_number) values (563668234, 91, 6362578);
insert into driver (drid, numofunitdri , license_number) values (485961846, 84, 4171820);
insert into driver (drid, numofunitdri , license_number) values (396879269, 52, 3721185);
insert into driver (drid, numofunitdri , license_number) values (741755826, 61, 8008907);
insert into driver (drid, numofunitdri , license_number) values (421300385, 74, 2928558);
insert into driver (drid, numofunitdri , license_number) values (896006679, 61, 3125817);
insert into driver (drid, numofunitdri , license_number) values (438708268, 66, 5384969);
insert into driver (drid, numofunitdri , license_number) values (561545568, 72, 9332852);
insert into driver (drid, numofunitdri , license_number) values (458194298, 82, 7188616);
insert into driver (drid, numofunitdri , license_number) values (449356429, 87, 2803412);
insert into driver (drid, numofunitdri , license_number) values (416096532, 77, 2659903);
insert into driver (drid, numofunitdri , license_number) values (898688129, 53, 2715961);
insert into driver (drid, numofunitdri , license_number) values (687019960, 97, 4526345);
insert into driver (drid, numofunitdri , license_number) values (238380337, 75, 9059816);
insert into driver (drid, numofunitdri , license_number) values (765647006, 68, 3059246);
insert into driver (drid, numofunitdri , license_number) values (583794353, 75, 7372011);
insert into driver (drid, numofunitdri , license_number) values (394129399, 81, 2788364);
insert into driver (drid, numofunitdri , license_number) values (988603482, 69, 4670151);
insert into driver (drid, numofunitdri , license_number) values (241990631, 65, 3922945);
insert into driver (drid, numofunitdri , license_number) values (917938930, 89, 3747728);
insert into driver (drid, numofunitdri , license_number) values (988654449, 73, 2319298);
insert into driver (drid, numofunitdri , license_number) values (203827084, 82, 2790802);
insert into driver (drid, numofunitdri , license_number) values (864843487, 86, 8951953);
insert into driver (drid, numofunitdri , license_number) values (974918188, 62, 2646701);
insert into driver (drid, numofunitdri , license_number) values (792357175, 56, 3317315);
insert into driver (drid, numofunitdri , license_number) values (804417598, 100, 9737092);
insert into driver (drid, numofunitdri , license_number) values (265597155, 76, 6302591);
insert into driver (drid, numofunitdri , license_number) values (320235419, 90, 5995275);
insert into driver (drid, numofunitdri , license_number) values (570518879, 88, 2659578);
insert into driver (drid, numofunitdri , license_number) values (406585426, 74, 9400003);
insert into driver (drid, numofunitdri , license_number) values (595073780, 57, 9228233);
insert into driver (drid, numofunitdri , license_number) values (980138370, 69, 7975297);
insert into driver (drid, numofunitdri , license_number) values (736894554, 63, 2101818);
insert into driver (drid, numofunitdri , license_number) values (428480453, 70, 6006458);
insert into driver (drid, numofunitdri , license_number) values (756058299, 88, 2988919);
insert into driver (drid, numofunitdri , license_number) values (487718868, 92, 9870090);
insert into driver (drid, numofunitdri , license_number) values (994628901, 77, 8788139);
insert into driver (drid, numofunitdri , license_number) values (689925740, 74, 3250297);
insert into driver (drid, numofunitdri , license_number) values (401702694, 90, 1941591);
insert into driver (drid, numofunitdri , license_number) values (746111431, 69, 4295720);
insert into driver (drid, numofunitdri , license_number) values (938616428, 68, 4315888);
insert into driver (drid, numofunitdri , license_number) values (948884916, 94, 1790677);
insert into driver (drid, numofunitdri , license_number) values (375684751, 81, 7226294);
insert into driver (drid, numofunitdri , license_number) values (336820812, 55, 6985200);
insert into driver (drid, numofunitdri , license_number) values (986415825, 91, 9333849);
insert into driver (drid, numofunitdri , license_number) values (246217915, 93, 9668819);
insert into driver (drid, numofunitdri , license_number) values (450264245, 84, 2622390);
insert into driver (drid, numofunitdri , license_number) values (773983442, 68, 6860014);
insert into driver (drid, numofunitdri , license_number) values (615713216, 63, 1082126);
insert into driver (drid, numofunitdri , license_number) values (666335398, 51, 6980236);
insert into driver (drid, numofunitdri , license_number) values (623592586, 68, 4944832);
insert into driver (drid, numofunitdri , license_number) values (558452076, 72, 4957075);
insert into driver (drid, numofunitdri , license_number) values (997452654, 85, 1091192);
insert into driver (drid, numofunitdri , license_number) values (765051016, 66, 8037276);
insert into driver (drid, numofunitdri , license_number) values (310000624, 58, 9610988);
insert into driver (drid, numofunitdri , license_number) values (885927843, 61, 6543932);
insert into driver (drid, numofunitdri , license_number) values (509335037, 97, 3615745);
insert into driver (drid, numofunitdri , license_number) values (226789243, 65, 1323928);
insert into driver (drid, numofunitdri , license_number) values (686999212, 50, 7013047);
insert into driver (drid, numofunitdri , license_number) values (220152430, 55, 5304267);
insert into driver (drid, numofunitdri , license_number) values (928798041, 70, 3316573);
insert into driver (drid, numofunitdri , license_number) values (511271937, 52, 2120670);
insert into driver (drid, numofunitdri , license_number) values (464800500, 95, 9550204);
insert into driver (drid, numofunitdri , license_number) values (977077425, 51, 3999977);
insert into driver (drid, numofunitdri , license_number) values (604017019, 92, 1038157);
insert into driver (drid, numofunitdri , license_number) values (833591388, 59, 5256095);
insert into driver (drid, numofunitdri , license_number) values (477547383, 53, 8586109);
insert into driver (drid, numofunitdri , license_number) values (534732068, 89, 7358768);
insert into driver (drid, numofunitdri , license_number) values (532848954, 79, 3125671);
insert into driver (drid, numofunitdri , license_number) values (695990349, 62, 1813708);
insert into driver (drid, numofunitdri , license_number) values (481479479, 79, 9723578);
insert into driver (drid, numofunitdri , license_number) values (349842875, 50, 1236650);
insert into driver (drid, numofunitdri , license_number) values (439423189, 69, 2293706);
insert into driver (drid, numofunitdri , license_number) values (340404650, 51, 5019848);
insert into driver (drid, numofunitdri , license_number) values (653015077, 62, 9390760);
insert into driver (drid, numofunitdri , license_number) values (259387554, 81, 8636746);
insert into driver (drid, numofunitdri , license_number) values (831272378, 85, 4221631);
insert into driver (drid, numofunitdri , license_number) values (774319230, 83, 3432115);
insert into driver (drid, numofunitdri , license_number) values (491979798, 86, 7438799);
insert into driver (drid, numofunitdri , license_number) values (365257990, 63, 7886440);
insert into driver (drid, numofunitdri , license_number) values (885009951, 95, 2708727);
insert into driver (drid, numofunitdri , license_number) values (515004428, 73, 5878444);
insert into driver (drid, numofunitdri , license_number) values (428460214, 99, 7253464);
insert into driver (drid, numofunitdri , license_number) values (276900605, 90, 1695726);
insert into driver (drid, numofunitdri , license_number) values (631867539, 80, 1939548);
insert into driver (drid, numofunitdri , license_number) values (725275431, 90, 7784090);
insert into driver (drid, numofunitdri , license_number) values (444016747, 89, 7963947);
insert into driver (drid, numofunitdri , license_number) values (733080691, 89, 9350398);
insert into driver (drid, numofunitdri , license_number) values (346792266, 70, 9362240);
insert into driver (drid, numofunitdri , license_number) values (554522476, 87, 3696151);
insert into driver (drid, numofunitdri , license_number) values (797990521, 80, 6450901);
insert into driver (drid, numofunitdri , license_number) values (240728084, 72, 4448642);
insert into driver (drid, numofunitdri , license_number) values (881297491, 71, 2683643);
insert into driver (drid, numofunitdri , license_number) values (827433628, 85, 8021727);
insert into driver (drid, numofunitdri , license_number) values (550492330, 64, 2646229);
insert into driver (drid, numofunitdri , license_number) values (914365845, 57, 8423845);
insert into driver (drid, numofunitdri , license_number) values (741326125, 76, 7640391);
insert into driver (drid, numofunitdri , license_number) values (208028711, 70, 5366395);
insert into driver (drid, numofunitdri , license_number) values (342518850, 62, 3455959);
insert into driver (drid, numofunitdri , license_number) values (708258350, 70, 5138858);
insert into driver (drid, numofunitdri , license_number) values (964575005, 93, 1727107);
insert into driver (drid, numofunitdri , license_number) values (601740869, 54, 6022960);
insert into driver (drid, numofunitdri , license_number) values (689498007, 83, 6129063);
insert into driver (drid, numofunitdri , license_number) values (718509797, 79, 8732747);
insert into driver (drid, numofunitdri , license_number) values (395752081, 93, 9964447);
insert into driver (drid, numofunitdri , license_number) values (745709473, 75, 9077738);
insert into driver (drid, numofunitdri , license_number) values (999150011, 94, 1163919);
insert into driver (drid, numofunitdri , license_number) values (788508207, 52, 2233557);
insert into driver (drid, numofunitdri , license_number) values (863350375, 87, 8482588);
insert into driver (drid, numofunitdri , license_number) values (630717016, 86, 7781683);
insert into driver (drid, numofunitdri , license_number) values (286848921, 86, 5098592);
insert into driver (drid, numofunitdri , license_number) values (618872199, 51, 4933831);
insert into driver (drid, numofunitdri , license_number) values (281559487, 100, 7800362);
insert into driver (drid, numofunitdri , license_number) values (951480178, 77, 7825885);
insert into driver (drid, numofunitdri , license_number) values (341368761, 76, 6403669);
insert into driver (drid, numofunitdri , license_number) values (797353908, 84, 8218085);
insert into driver (drid, numofunitdri , license_number) values (866442038, 85, 9245814);
insert into driver (drid, numofunitdri , license_number) values (965083022, 59, 6394323);
insert into driver (drid, numofunitdri , license_number) values (554152828, 95, 4750067);
insert into driver (drid, numofunitdri , license_number) values (893282558, 79, 2879444);
insert into driver (drid, numofunitdri , license_number) values (984912421, 50, 6541466);
insert into driver (drid, numofunitdri , license_number) values (537518339, 66, 1506204);
insert into driver (drid, numofunitdri , license_number) values (349089473, 70, 6290009);
insert into driver (drid, numofunitdri , license_number) values (406175340, 89, 3271016);
insert into driver (drid, numofunitdri , license_number) values (862925280, 98, 1428808);
insert into driver (drid, numofunitdri , license_number) values (483191902, 63, 5139626);
insert into driver (drid, numofunitdri , license_number) values (556998325, 54, 5358924);
insert into driver (drid, numofunitdri , license_number) values (226292976, 78, 8333214);
insert into driver (drid, numofunitdri , license_number) values (334065375, 82, 6749140);
insert into driver (drid, numofunitdri , license_number) values (807521914, 95, 2768295);
insert into driver (drid, numofunitdri , license_number) values (326640689, 88, 6155574);
insert into driver (drid, numofunitdri , license_number) values (793543003, 68, 7850988);
insert into driver (drid, numofunitdri , license_number) values (743839691, 73, 3539702);
insert into driver (drid, numofunitdri , license_number) values (894964549, 73, 6846549);
insert into driver (drid, numofunitdri , license_number) values (875953166, 98, 5827337);
insert into driver (drid, numofunitdri , license_number) values (336882325, 68, 8001489);
insert into driver (drid, numofunitdri , license_number) values (401315449, 50, 6686298);
insert into driver (drid, numofunitdri , license_number) values (378015607, 55, 9303967);
insert into driver (drid, numofunitdri , license_number) values (734144285, 76, 4367028);
insert into driver (drid, numofunitdri , license_number) values (864603176, 98, 1776541);
insert into driver (drid, numofunitdri , license_number) values (714075108, 74, 8035734);
insert into driver (drid, numofunitdri , license_number) values (680101877, 82, 7430341);
insert into driver (drid, numofunitdri , license_number) values (620282002, 55, 5616327);
insert into driver (drid, numofunitdri , license_number) values (996762514, 97, 8451186);
insert into driver (drid, numofunitdri , license_number) values (364765141, 72, 4796787);
insert into driver (drid, numofunitdri , license_number) values (589852399, 56, 6497061);
insert into driver (drid, numofunitdri , license_number) values (555183237, 100, 1889345);
insert into driver (drid, numofunitdri , license_number) values (889609159, 93, 4494221);
insert into driver (drid, numofunitdri , license_number) values (812438080, 81, 6837525);
insert into driver (drid, numofunitdri , license_number) values (509595240, 81, 6644585);
insert into driver (drid, numofunitdri , license_number) values (940458969, 64, 5980296);
insert into driver (drid, numofunitdri , license_number) values (283253973, 74, 4671743);
insert into driver (drid, numofunitdri , license_number) values (687200055, 91, 8528484);
insert into driver (drid, numofunitdri , license_number) values (914671353, 51, 8238202);
insert into driver (drid, numofunitdri , license_number) values (344193423, 89, 4694197);
insert into driver (drid, numofunitdri , license_number) values (599627456, 66, 4323985);
insert into driver (drid, numofunitdri , license_number) values (557533592, 88, 2298612);
insert into driver (drid, numofunitdri , license_number) values (907781325, 62, 4924015);
insert into driver (drid, numofunitdri , license_number) values (397849987, 97, 3181159);
insert into driver (drid, numofunitdri , license_number) values (676164488, 78, 3073216);
insert into driver (drid, numofunitdri , license_number) values (520726703, 84, 1822615);
insert into driver (drid, numofunitdri , license_number) values (301043018, 66, 9217263);
insert into driver (drid, numofunitdri , license_number) values (916770876, 73, 1017533);
insert into driver (drid, numofunitdri , license_number) values (296294517, 69, 1117110);
insert into driver (drid, numofunitdri , license_number) values (681353074, 73, 8132105);
insert into driver (drid, numofunitdri , license_number) values (531116008, 81, 7226268);
insert into driver (drid, numofunitdri , license_number) values (480944047, 89, 6309033);
insert into driver (drid, numofunitdri , license_number) values (851111151, 82, 6028572);
insert into driver (drid, numofunitdri , license_number) values (570260627, 79, 1510121);
insert into driver (drid, numofunitdri , license_number) values (825451860, 52, 9603756);
insert into driver (drid, numofunitdri , license_number) values (204277787, 87, 3925681);
insert into driver (drid, numofunitdri , license_number) values (635425834, 81, 3360855);
insert into driver (drid, numofunitdri , license_number) values (923116493, 56, 7502712);
insert into driver (drid, numofunitdri , license_number) values (211142104, 96, 3487610);
insert into driver (drid, numofunitdri , license_number) values (906106610, 77, 3099921);
insert into driver (drid, numofunitdri , license_number) values (248210543, 91, 9932730);
insert into driver (drid, numofunitdri , license_number) values (811660019, 66, 8725492);
insert into driver (drid, numofunitdri , license_number) values (969555471, 64, 4866378);
insert into driver (drid, numofunitdri , license_number) values (834101788, 66, 4181589);
insert into driver (drid, numofunitdri , license_number) values (203123797, 94, 3738950);
insert into driver (drid, numofunitdri , license_number) values (843182893, 62, 9392172);
insert into driver (drid, numofunitdri , license_number) values (932928997, 71, 5376331);
insert into driver (drid, numofunitdri , license_number) values (913466542, 100, 6854850);
insert into driver (drid, numofunitdri , license_number) values (835630788, 94, 8841955);
insert into driver (drid, numofunitdri , license_number) values (205703064, 83, 6211704);
insert into driver (drid, numofunitdri , license_number) values (990918736, 96, 2348904);
insert into driver (drid, numofunitdri , license_number) values (987232339, 67, 9821799);
insert into driver (drid, numofunitdri , license_number) values (917200994, 87, 9162168);
insert into driver (drid, numofunitdri , license_number) values (522351672, 86, 8499690);
insert into driver (drid, numofunitdri , license_number) values (200189891, 82, 4100088);
insert into driver (drid, numofunitdri , license_number) values (721814266, 51, 9062074);
insert into driver (drid, numofunitdri , license_number) values (336808653, 99, 1716554);
insert into driver (drid, numofunitdri , license_number) values (846247008, 98, 1948103);
insert into driver (drid, numofunitdri , license_number) values (947265144, 79, 9191234);
insert into driver (drid, numofunitdri , license_number) values (369030089, 50, 4690483);
insert into driver (drid, numofunitdri , license_number) values (323926553, 61, 1149272);
insert into driver (drid, numofunitdri , license_number) values (747529222, 81, 9406723);
insert into driver (drid, numofunitdri , license_number) values (763261413, 99, 8293590);
insert into driver (drid, numofunitdri , license_number) values (802359317, 95, 5785365);


insert into equipment_manager (equid, numofuniteqi , expertise ) values (982612224, 90, 'level5');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (727880995, 51, 'level1');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (932526981, 72, 'level5');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (454575986, 51, 'level4');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (972181903, 58, 'level1');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (243448508, 92, 'level1');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (531960412, 85, 'level5');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (766189156, 87, 'level5');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (212977764, 89, 'level3');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (909964051, 98, 'level4');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (454232522, 72, 'level2');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (518096435, 71, 'level1');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (760503329, 51, 'level4');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (858090595, 99, 'level4');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (593299605, 51, 'level5');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (819899409, 69, 'level1');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (469995523, 76, 'level1');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (772327874, 75, 'level2');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (222994471, 85, 'level3');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (348255887, 70, 'level4');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (363793475, 72, 'level4');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (459783586, 80, 'level3');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (640122873, 64, 'level1');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (344431286, 92, 'level1');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (948357160, 71, 'level5');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (210785905, 63, 'level5');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (711261816, 86, 'level1');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (762688896, 73, 'level1');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (682941846, 92, 'level1');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (373206113, 53, 'level1');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (447481045, 60, 'level2');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (465062518, 64, 'level1');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (560067604, 81, 'level3');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (277269929, 72, 'level3');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (742887866, 88, 'level3');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (660514243, 67, 'level2');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (679651710, 80, 'level1');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (724038533, 97, 'level4');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (341880913, 57, 'level1');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (399328062, 54, 'level4');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (498949981, 87, 'level2');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (704182996, 54, 'level2');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (232233786, 80, 'level1');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (576857948, 60, 'level2');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (532656770, 68, 'level5');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (480063267, 89, 'level3');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (257828979, 85, 'level2');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (698814256, 77, 'level1');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (700200654, 91, 'level1');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (321811352, 51, 'level3');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (883295076, 70, 'level5');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (254674536, 100, 'level5');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (297242234, 50, 'level4');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (853614962, 76, 'level5');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (820064168, 67, 'level5');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (266008532, 89, 'level1');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (721177551, 98, 'level2');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (847262796, 80, 'level4');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (321146855, 82, 'level3');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (431308813, 84, 'level3');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (437236299, 96, 'level1');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (953555311, 78, 'level3');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (884537549, 54, 'level1');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (370142499, 87, 'level1');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (986929785, 94, 'level5');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (484099696, 69, 'level3');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (350872400, 78, 'level2');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (791307825, 81, 'level5');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (883006224, 57, 'level2');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (448666546, 71, 'level3');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (469801513, 78, 'level4');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (649026697, 63, 'level4');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (847405574, 71, 'level2');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (608705943, 100, 'level5');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (292756454, 59, 'level2');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (946205391, 70, 'level5');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (489052115, 69, 'level4');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (347902990, 59, 'level4');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (347867303, 67, 'level3');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (615736077, 67, 'level4');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (464493626, 61, 'level2');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (478279825, 67, 'level4');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (633646846, 55, 'level2');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (642907364, 67, 'level3');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (539283960, 90, 'level3');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (727518412, 55, 'level5');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (871780056, 80, 'level5');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (858489334, 54, 'level4');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (632502084, 54, 'level5');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (480476235, 93, 'level2');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (532291535, 53, 'level5');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (595268005, 51, 'level4');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (414142649, 95, 'level1');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (704426073, 68, 'level4');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (425414762, 64, 'level1');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (632651991, 61, 'level5');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (731682022, 77, 'level5');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (580785541, 59, 'level1');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (416991040, 56, 'level2');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (655759381, 76, 'level4');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (956249772, 92, 'level1');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (266450709, 64, 'level2');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (818307882, 95, 'level5');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (481775046, 90, 'level3');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (302206364, 64, 'level3');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (963892237, 92, 'level5');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (610892428, 54, 'level4');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (940285934, 89, 'level4');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (334792942, 51, 'level3');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (839485578, 75, 'level1');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (482939525, 63, 'level5');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (864274577, 76, 'level3');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (792002117, 96, 'level1');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (438432144, 66, 'level3');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (565162990, 70, 'level5');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (277438383, 59, 'level4');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (928751210, 85, 'level4');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (595192013, 99, 'level5');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (365392953, 68, 'level2');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (205162580, 52, 'level5');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (525958429, 95, 'level1');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (583085929, 68, 'level1');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (298030437, 55, 'level2');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (602096606, 75, 'level3');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (283068124, 91, 'level3');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (463970279, 56, 'level3');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (341209519, 62, 'level1');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (364980762, 82, 'level3');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (649841614, 64, 'level4');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (914196053, 59, 'level4');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (482473253, 76, 'level2');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (622300985, 89, 'level1');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (930019837, 92, 'level2');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (301622784, 90, 'level4');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (711578398, 84, 'level1');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (407502197, 88, 'level1');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (735668134, 73, 'level5');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (731072848, 58, 'level3');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (519751631, 60, 'level4');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (382615996, 59, 'level1');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (220297259, 56, 'level3');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (358192813, 52, 'level1');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (506388910, 58, 'level5');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (657408786, 70, 'level2');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (970589351, 54, 'level4');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (200821528, 81, 'level3');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (593262423, 55, 'level2');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (889309465, 85, 'level4');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (452200965, 97, 'level4');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (721769926, 100, 'level1');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (271554840, 64, 'level3');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (230312426, 97, 'level1');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (578603381, 79, 'level4');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (566762434, 65, 'level4');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (712468405, 83, 'level1');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (569814222, 57, 'level5');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (865234479, 86, 'level1');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (709614725, 67, 'level2');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (255007309, 97, 'level2');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (436483704, 86, 'level1');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (625930039, 89, 'level1');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (515277808, 83, 'level1');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (538515820, 74, 'level4');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (854060727, 99, 'level3');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (997957029, 93, 'level3');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (296542066, 51, 'level1');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (644914473, 55, 'level1');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (446321234, 61, 'level2');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (852719821, 86, 'level4');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (930558408, 63, 'level2');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (332279400, 75, 'level5');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (629967297, 94, 'level3');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (259210821, 97, 'level4');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (731402431, 98, 'level2');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (840268806, 91, 'level3');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (598799928, 62, 'level4');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (995573537, 67, 'level1');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (633883477, 68, 'level4');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (999945194, 59, 'level3');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (217551524, 50, 'level3');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (880107473, 83, 'level5');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (974610271, 86, 'level5');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (491883622, 55, 'level3');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (451708929, 75, 'level5');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (867829997, 99, 'level5');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (258179308, 70, 'level3');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (356715176, 85, 'level1');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (331964601, 94, 'level1');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (703388516, 89, 'level5');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (303664558, 87, 'level1');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (769696771, 69, 'level1');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (333173822, 90, 'level1');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (403335064, 68, 'level3');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (520219665, 86, 'level2');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (737788212, 61, 'level2');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (721078133, 93, 'level2');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (773303821, 53, 'level4');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (355545176, 50, 'level4');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (915567979, 53, 'level2');
insert into equipment_manager (equid, numofuniteqi , expertise ) values (681347186, 55, 'level4');


insert into medic (medid, numofunitmed , seniority) values (234085349, 54, 38);
insert into medic (medid, numofunitmed , seniority) values (651838266, 89, 34);
insert into medic (medid, numofunitmed , seniority) values (890675071, 64, 39);
insert into medic (medid, numofunitmed , seniority) values (793837457, 64, 7);
insert into medic (medid, numofunitmed , seniority) values (832331645, 65, 7);
insert into medic (medid, numofunitmed , seniority) values (291226579, 61, 15);
insert into medic (medid, numofunitmed , seniority) values (902221394, 74, 29);
insert into medic (medid, numofunitmed , seniority) values (740789922, 87, 12);
insert into medic (medid, numofunitmed , seniority) values (963913705, 51, 32);
insert into medic (medid, numofunitmed , seniority) values (779263499, 83, 40);
insert into medic (medid, numofunitmed , seniority) values (322745610, 97, 17);
insert into medic (medid, numofunitmed , seniority) values (518959405, 95, 19);
insert into medic (medid, numofunitmed , seniority) values (919568806, 90, 28);
insert into medic (medid, numofunitmed , seniority) values (446840659, 100, 4);
insert into medic (medid, numofunitmed , seniority) values (520291794, 96, 25);
insert into medic (medid, numofunitmed , seniority) values (548889067, 100, 21);
insert into medic (medid, numofunitmed , seniority) values (591489237, 83, 35);
insert into medic (medid, numofunitmed , seniority) values (624995766, 87, 25);
insert into medic (medid, numofunitmed , seniority) values (841984821, 52, 8);
insert into medic (medid, numofunitmed , seniority) values (467700627, 91, 3);
insert into medic (medid, numofunitmed , seniority) values (799867060, 76, 28);
insert into medic (medid, numofunitmed , seniority) values (297584637, 79, 13);
insert into medic (medid, numofunitmed , seniority) values (566957404, 61, 18);
insert into medic (medid, numofunitmed , seniority) values (697734654, 89, 1);
insert into medic (medid, numofunitmed , seniority) values (530391943, 97, 19);
insert into medic (medid, numofunitmed , seniority) values (871955615, 62, 12);
insert into medic (medid, numofunitmed , seniority) values (758609677, 94, 15);
insert into medic (medid, numofunitmed , seniority) values (751624913, 84, 21);
insert into medic (medid, numofunitmed , seniority) values (907457269, 75, 3);
insert into medic (medid, numofunitmed , seniority) values (277900932, 79, 23);
insert into medic (medid, numofunitmed , seniority) values (382874329, 52, 37);
insert into medic (medid, numofunitmed , seniority) values (737725800, 60, 28);
insert into medic (medid, numofunitmed , seniority) values (857055521, 86, 2);
insert into medic (medid, numofunitmed , seniority) values (377705927, 93, 33);
insert into medic (medid, numofunitmed , seniority) values (414167169, 92, 32);
insert into medic (medid, numofunitmed , seniority) values (595720611, 50, 23);
insert into medic (medid, numofunitmed , seniority) values (347384096, 71, 17);
insert into medic (medid, numofunitmed , seniority) values (238188495, 54, 10);
insert into medic (medid, numofunitmed , seniority) values (348160815, 64, 35);
insert into medic (medid, numofunitmed , seniority) values (453249945, 86, 2);
insert into medic (medid, numofunitmed , seniority) values (327863379, 61, 35);
insert into medic (medid, numofunitmed , seniority) values (842182229, 56, 23);
insert into medic (medid, numofunitmed , seniority) values (306958502, 68, 4);
insert into medic (medid, numofunitmed , seniority) values (997055474, 73, 31);
insert into medic (medid, numofunitmed , seniority) values (942680272, 58, 15);
insert into medic (medid, numofunitmed , seniority) values (623252700, 100, 7);
insert into medic (medid, numofunitmed , seniority) values (441668445, 60, 36);
insert into medic (medid, numofunitmed , seniority) values (550379633, 52, 38);
insert into medic (medid, numofunitmed , seniority) values (337862231, 75, 14);
insert into medic (medid, numofunitmed , seniority) values (901519983, 58, 23);
insert into medic (medid, numofunitmed , seniority) values (727586756, 73, 11);
insert into medic (medid, numofunitmed , seniority) values (459720762, 93, 38);
insert into medic (medid, numofunitmed , seniority) values (304194600, 84, 23);
insert into medic (medid, numofunitmed , seniority) values (463646529, 93, 2);
insert into medic (medid, numofunitmed , seniority) values (513134365, 64, 19);
insert into medic (medid, numofunitmed , seniority) values (458225046, 62, 2);
insert into medic (medid, numofunitmed , seniority) values (725418726, 79, 29);
insert into medic (medid, numofunitmed , seniority) values (557195139, 72, 26);
insert into medic (medid, numofunitmed , seniority) values (304514762, 63, 27);
insert into medic (medid, numofunitmed , seniority) values (752331071, 90, 2);
insert into medic (medid, numofunitmed , seniority) values (519920547, 64, 12);
insert into medic (medid, numofunitmed , seniority) values (432467823, 66, 35);
insert into medic (medid, numofunitmed , seniority) values (308775630, 98, 9);
insert into medic (medid, numofunitmed , seniority) values (512184207, 89, 16);
insert into medic (medid, numofunitmed , seniority) values (706596151, 80, 10);
insert into medic (medid, numofunitmed , seniority) values (537024413, 55, 37);
insert into medic (medid, numofunitmed , seniority) values (308008362, 70, 30);
insert into medic (medid, numofunitmed , seniority) values (787942498, 94, 25);
insert into medic (medid, numofunitmed , seniority) values (960687717, 87, 15);
insert into medic (medid, numofunitmed , seniority) values (909350871, 50, 28);
insert into medic (medid, numofunitmed , seniority) values (410680070, 72, 15);
insert into medic (medid, numofunitmed , seniority) values (867990021, 94, 35);
insert into medic (medid, numofunitmed , seniority) values (516573061, 81, 38);
insert into medic (medid, numofunitmed , seniority) values (724500198, 55, 21);
insert into medic (medid, numofunitmed , seniority) values (610687069, 86, 39);
insert into medic (medid, numofunitmed , seniority) values (417789472, 100, 37);
insert into medic (medid, numofunitmed , seniority) values (336002026, 64, 17);
insert into medic (medid, numofunitmed , seniority) values (927496542, 81, 25);
insert into medic (medid, numofunitmed , seniority) values (650594346, 60, 26);
insert into medic (medid, numofunitmed , seniority) values (540671407, 81, 40);
insert into medic (medid, numofunitmed , seniority) values (941163499, 50, 33);
insert into medic (medid, numofunitmed , seniority) values (931452875, 85, 2);
insert into medic (medid, numofunitmed , seniority) values (590945336, 90, 36);
insert into medic (medid, numofunitmed , seniority) values (290280179, 64, 9);
insert into medic (medid, numofunitmed , seniority) values (551984383, 62, 8);
insert into medic (medid, numofunitmed , seniority) values (270576550, 76, 37);
insert into medic (medid, numofunitmed , seniority) values (538082163, 99, 2);
insert into medic (medid, numofunitmed , seniority) values (793143517, 70, 7);
insert into medic (medid, numofunitmed , seniority) values (232605534, 92, 33);
insert into medic (medid, numofunitmed , seniority) values (709525570, 92, 28);
insert into medic (medid, numofunitmed , seniority) values (274301915, 91, 2);
insert into medic (medid, numofunitmed , seniority) values (277528989, 87, 30);
insert into medic (medid, numofunitmed , seniority) values (232986716, 85, 18);
insert into medic (medid, numofunitmed , seniority) values (978482996, 56, 33);
insert into medic (medid, numofunitmed , seniority) values (699398559, 68, 34);
insert into medic (medid, numofunitmed , seniority) values (797155743, 91, 18);
insert into medic (medid, numofunitmed , seniority) values (420924753, 57, 34);
insert into medic (medid, numofunitmed , seniority) values (838083944, 62, 5);
insert into medic (medid, numofunitmed , seniority) values (717729476, 90, 4);
insert into medic (medid, numofunitmed , seniority) values (420918342, 85, 35);
insert into medic (medid, numofunitmed , seniority) values (618791854, 74, 34);
insert into medic (medid, numofunitmed , seniority) values (812041779, 89, 21);
insert into medic (medid, numofunitmed , seniority) values (265593209, 89, 29);
insert into medic (medid, numofunitmed , seniority) values (434518746, 79, 36);
insert into medic (medid, numofunitmed , seniority) values (360584366, 86, 19);
insert into medic (medid, numofunitmed , seniority) values (636970599, 50, 23);
insert into medic (medid, numofunitmed , seniority) values (296679948, 64, 5);
insert into medic (medid, numofunitmed , seniority) values (520339337, 63, 1);
insert into medic (medid, numofunitmed , seniority) values (609620768, 91, 18);
insert into medic (medid, numofunitmed , seniority) values (643853720, 76, 30);
insert into medic (medid, numofunitmed , seniority) values (996361395, 64, 16);
insert into medic (medid, numofunitmed , seniority) values (971026706, 87, 22);
insert into medic (medid, numofunitmed , seniority) values (776028419, 83, 15);
insert into medic (medid, numofunitmed , seniority) values (925941044, 79, 31);
insert into medic (medid, numofunitmed , seniority) values (611855918, 68, 40);
insert into medic (medid, numofunitmed , seniority) values (747527322, 86, 25);
insert into medic (medid, numofunitmed , seniority) values (343592915, 55, 8);
insert into medic (medid, numofunitmed , seniority) values (567385403, 51, 37);
insert into medic (medid, numofunitmed , seniority) values (810515396, 91, 25);
insert into medic (medid, numofunitmed , seniority) values (749224261, 86, 22);
insert into medic (medid, numofunitmed , seniority) values (605422774, 73, 13);
insert into medic (medid, numofunitmed , seniority) values (690811603, 61, 6);
insert into medic (medid, numofunitmed , seniority) values (477248137, 98, 6);
insert into medic (medid, numofunitmed , seniority) values (370147107, 67, 27);
insert into medic (medid, numofunitmed , seniority) values (978793967, 52, 4);
insert into medic (medid, numofunitmed , seniority) values (355494441, 100, 37);
insert into medic (medid, numofunitmed , seniority) values (476136528, 50, 11);
insert into medic (medid, numofunitmed , seniority) values (346410477, 55, 14);
insert into medic (medid, numofunitmed , seniority) values (853893170, 72, 38);
insert into medic (medid, numofunitmed , seniority) values (600597233, 59, 8);
insert into medic (medid, numofunitmed , seniority) values (227741116, 76, 28);
insert into medic (medid, numofunitmed , seniority) values (992102214, 67, 21);
insert into medic (medid, numofunitmed , seniority) values (585375492, 94, 5);
insert into medic (medid, numofunitmed , seniority) values (703031003, 63, 2);
insert into medic (medid, numofunitmed , seniority) values (695034283, 89, 9);
insert into medic (medid, numofunitmed , seniority) values (976520450, 77, 10);
insert into medic (medid, numofunitmed , seniority) values (944780139, 99, 4);
insert into medic (medid, numofunitmed , seniority) values (593478915, 85, 31);
insert into medic (medid, numofunitmed , seniority) values (670946315, 76, 18);
insert into medic (medid, numofunitmed , seniority) values (822663597, 51, 34);
insert into medic (medid, numofunitmed , seniority) values (281094584, 96, 11);
insert into medic (medid, numofunitmed , seniority) values (907079129, 52, 13);
insert into medic (medid, numofunitmed , seniority) values (928210301, 73, 33);
insert into medic (medid, numofunitmed , seniority) values (643006983, 58, 29);
insert into medic (medid, numofunitmed , seniority) values (239890074, 76, 39);
insert into medic (medid, numofunitmed , seniority) values (836607164, 68, 2);
insert into medic (medid, numofunitmed , seniority) values (489068668, 77, 20);
insert into medic (medid, numofunitmed , seniority) values (819038558, 90, 22);
insert into medic (medid, numofunitmed , seniority) values (535529709, 54, 38);
insert into medic (medid, numofunitmed , seniority) values (326317294, 82, 12);
insert into medic (medid, numofunitmed , seniority) values (202648873, 87, 12);
insert into medic (medid, numofunitmed , seniority) values (743710735, 57, 17);
insert into medic (medid, numofunitmed , seniority) values (601390528, 75, 40);
insert into medic (medid, numofunitmed , seniority) values (611909684, 65, 40);
insert into medic (medid, numofunitmed , seniority) values (811689106, 66, 38);
insert into medic (medid, numofunitmed , seniority) values (361857458, 62, 13);
insert into medic (medid, numofunitmed , seniority) values (233969348, 71, 38);
insert into medic (medid, numofunitmed , seniority) values (376994711, 50, 5);
insert into medic (medid, numofunitmed , seniority) values (730860325, 97, 17);
insert into medic (medid, numofunitmed , seniority) values (779506864, 60, 35);
insert into medic (medid, numofunitmed , seniority) values (200075898, 53, 20);
insert into medic (medid, numofunitmed , seniority) values (511593222, 67, 1);
insert into medic (medid, numofunitmed , seniority) values (324105297, 72, 22);
insert into medic (medid, numofunitmed , seniority) values (249803200, 69, 28);
insert into medic (medid, numofunitmed , seniority) values (422825834, 76, 29);
insert into medic (medid, numofunitmed , seniority) values (936630826, 66, 1);
insert into medic (medid, numofunitmed , seniority) values (716690816, 88, 22);
insert into medic (medid, numofunitmed , seniority) values (351747397, 73, 21);
insert into medic (medid, numofunitmed , seniority) values (526912563, 88, 20);
insert into medic (medid, numofunitmed , seniority) values (903973380, 68, 6);
insert into medic (medid, numofunitmed , seniority) values (378561692, 66, 2);
insert into medic (medid, numofunitmed , seniority) values (842928712, 51, 40);
insert into medic (medid, numofunitmed , seniority) values (575398878, 83, 9);
insert into medic (medid, numofunitmed , seniority) values (289750900, 72, 20);
insert into medic (medid, numofunitmed , seniority) values (747904919, 99, 8);
insert into medic (medid, numofunitmed , seniority) values (628726513, 69, 33);
insert into medic (medid, numofunitmed , seniority) values (254315147, 84, 6);
insert into medic (medid, numofunitmed , seniority) values (568092746, 97, 39);
insert into medic (medid, numofunitmed , seniority) values (640935247, 87, 28);
insert into medic (medid, numofunitmed , seniority) values (708931639, 64, 6);
insert into medic (medid, numofunitmed , seniority) values (421213994, 88, 12);
insert into medic (medid, numofunitmed , seniority) values (946011285, 60, 17);
insert into medic (medid, numofunitmed , seniority) values (654954595, 77, 13);
insert into medic (medid, numofunitmed , seniority) values (270899201, 52, 30);
insert into medic (medid, numofunitmed , seniority) values (858281697, 61, 1);
insert into medic (medid, numofunitmed , seniority) values (608415845, 85, 12);
insert into medic (medid, numofunitmed , seniority) values (949219394, 90, 24);
insert into medic (medid, numofunitmed , seniority) values (704169862, 99, 18);
insert into medic (medid, numofunitmed , seniority) values (666474638, 83, 6);
insert into medic (medid, numofunitmed , seniority) values (393060905, 83, 18);
insert into medic (medid, numofunitmed , seniority) values (499918569, 87, 34);
insert into medic (medid, numofunitmed , seniority) values (545161690, 98, 20);
insert into medic (medid, numofunitmed , seniority) values (926601534, 87, 31);
insert into medic (medid, numofunitmed , seniority) values (417737162, 63, 12);
insert into medic (medid, numofunitmed , seniority) values (586538370, 58, 18);
insert into medic (medid, numofunitmed , seniority) values (276795979, 69, 14);
insert into medic (medid, numofunitmed , seniority) values (534358900, 98, 1);
insert into medic (medid, numofunitmed , seniority) values (204429106, 83, 9);
insert into medic (medid, numofunitmed , seniority) values (901425149, 59, 23);
insert into medic (medid, numofunitmed , seniority) values (419198156, 57, 16);


insert into paramedic (parid, numofunitpar , license_number, seniority) values (785978553, 60, 31929, 38);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (542308700, 96, 53424, 27);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (699576616, 97, 72862, 3);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (392741973, 65, 86112, 36);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (480123005, 95, 20415, 16);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (944052349, 88, 28880, 28);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (989563848, 71, 92148, 15);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (964649785, 96, 65949, 17);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (582106092, 99, 34738, 32);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (469768163, 93, 45100, 33);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (406019333, 100, 70248, 7);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (819180397, 82, 53297, 40);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (455066432, 55, 86899, 14);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (961059386, 81, 48128, 29);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (806597481, 71, 62920, 15);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (831830071, 81, 46297, 28);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (882197863, 85, 26002, 2);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (495221724, 89, 73048, 34);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (271535005, 63, 23557, 14);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (650937944, 88, 73061, 38);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (856902670, 91, 54176, 1);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (238625053, 80, 84923, 3);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (821240777, 60, 49944, 22);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (407734479, 54, 69321, 2);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (345473603, 53, 76476, 15);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (366789908, 55, 99027, 20);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (808374616, 71, 32403, 26);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (514165228, 50, 30708, 22);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (913482156, 87, 22578, 15);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (748826331, 67, 64327, 39);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (419035521, 78, 14044, 19);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (282428803, 72, 71425, 7);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (984183928, 60, 84674, 14);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (227018664, 69, 94480, 18);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (545260484, 56, 58088, 12);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (968328541, 88, 85215, 2);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (391162568, 93, 96879, 12);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (807218322, 66, 61731, 2);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (539889862, 58, 45673, 10);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (843007948, 60, 96710, 19);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (989880883, 54, 36331, 25);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (683794954, 56, 18783, 35);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (586004806, 73, 17230, 22);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (596241429, 56, 97332, 39);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (510810957, 69, 29455, 29);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (956898022, 98, 56467, 15);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (671279044, 99, 48259, 20);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (212923740, 96, 86871, 40);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (983652506, 65, 85853, 22);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (855285210, 70, 63692, 22);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (245428380, 64, 44495, 30);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (998094831, 55, 58304, 38);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (476145632, 52, 81243, 15);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (468139150, 55, 49539, 34);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (567102602, 86, 61480, 39);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (693934009, 59, 82857, 12);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (454034232, 73, 77571, 28);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (552265170, 58, 34466, 8);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (496388028, 60, 76576, 34);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (240203291, 88, 35396, 20);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (958408039, 52, 99479, 17);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (718783863, 51, 93047, 4);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (751176942, 67, 91357, 39);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (851287858, 65, 89595, 2);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (691544219, 75, 96274, 15);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (948882720, 83, 37590, 13);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (828883469, 62, 12295, 15);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (884801804, 75, 18024, 22);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (561284223, 51, 13484, 23);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (950585345, 94, 19823, 15);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (391355805, 57, 18851, 36);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (322286082, 80, 64326, 26);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (754441338, 53, 63951, 25);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (260854569, 69, 21928, 8);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (222923263, 92, 27500, 21);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (211255503, 74, 59764, 5);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (873948198, 93, 95801, 32);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (312087983, 55, 21585, 13);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (806816198, 82, 64074, 26);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (443598093, 99, 80506, 15);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (691344282, 73, 81683, 7);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (374766487, 57, 55577, 6);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (710757960, 53, 12952, 3);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (445306075, 89, 48936, 24);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (995688668, 78, 19098, 30);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (652722411, 75, 82492, 23);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (621077477, 96, 89058, 27);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (545221165, 58, 86573, 26);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (425156114, 56, 66087, 14);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (818606459, 60, 12466, 14);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (598188444, 58, 50525, 7);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (441346003, 73, 84536, 12);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (617290747, 98, 26933, 26);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (402985437, 51, 53859, 14);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (781196390, 50, 87367, 9);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (573914777, 68, 27387, 20);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (842831771, 85, 75270, 30);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (630450359, 77, 22040, 28);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (399094454, 96, 29203, 29);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (203391234, 98, 62465, 33);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (811973075, 53, 55626, 17);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (706061384, 62, 21626, 24);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (262663281, 97, 94505, 13);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (376407912, 70, 33479, 25);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (749178077, 79, 34128, 11);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (993874364, 100, 66577, 14);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (884573670, 91, 94481, 28);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (670019517, 56, 74705, 17);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (577841650, 56, 27048, 26);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (275689661, 58, 18793, 19);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (302549616, 84, 82327, 36);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (804622177, 73, 82490, 34);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (571149512, 77, 45331, 1);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (618266586, 80, 49310, 6);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (699855371, 92, 35575, 32);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (452207890, 88, 56714, 3);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (289838436, 53, 48195, 12);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (365231909, 54, 83827, 37);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (708571924, 96, 70631, 14);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (317412460, 70, 32080, 2);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (864673555, 94, 51452, 24);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (491590053, 63, 92241, 27);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (837851776, 95, 26977, 39);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (240139811, 63, 46566, 40);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (381849050, 98, 50991, 4);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (204453034, 64, 25470, 16);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (440319289, 59, 60771, 35);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (759876471, 64, 79313, 1);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (906989217, 87, 84401, 4);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (547186172, 99, 71548, 21);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (608323500, 53, 64562, 13);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (702579309, 88, 79396, 4);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (969819406, 75, 71225, 24);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (353673495, 85, 49653, 20);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (868216124, 51, 80532, 13);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (209113765, 85, 60233, 22);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (427466689, 84, 99079, 39);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (458864113, 66, 22404, 13);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (789217012, 52, 12331, 2);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (508177523, 98, 24501, 7);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (962038068, 61, 57435, 6);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (867205290, 74, 43841, 33);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (931168872, 85, 75777, 14);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (829818622, 87, 47258, 17);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (941322349, 76, 33009, 31);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (236464859, 87, 18656, 21);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (727079712, 73, 33447, 17);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (584217167, 52, 20931, 1);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (513397281, 68, 30971, 4);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (661317642, 56, 84138, 18);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (802512326, 95, 15358, 6);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (262067059, 94, 90048, 2);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (755637647, 56, 89192, 24);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (235697092, 57, 67721, 25);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (904997454, 82, 21407, 37);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (916693309, 91, 31468, 11);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (407253352, 77, 34090, 15);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (898634971, 87, 59350, 16);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (284894598, 89, 36039, 33);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (285109856, 55, 74462, 14);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (609319129, 80, 94762, 5);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (353402897, 82, 99111, 10);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (860828170, 66, 76652, 12);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (411921528, 94, 24529, 20);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (596732893, 95, 90482, 4);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (422855713, 94, 86820, 29);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (589583856, 62, 23621, 3);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (842727131, 50, 72762, 5);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (723632348, 93, 85722, 11);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (453516347, 99, 94538, 28);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (230851972, 80, 31650, 18);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (201302482, 51, 44058, 29);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (556097732, 65, 25518, 8);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (578989574, 84, 88472, 40);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (687769567, 65, 55572, 19);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (725474033, 68, 33947, 7);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (712631974, 59, 51238, 34);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (507656943, 62, 92347, 20);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (921216735, 72, 92475, 37);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (826090029, 65, 85393, 17);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (358147740, 67, 14907, 27);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (703452921, 89, 46723, 5);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (682071816, 72, 44974, 35);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (281706607, 75, 94671, 6);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (477536678, 98, 54204, 8);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (599992764, 63, 12466, 10);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (304503192, 61, 39774, 6);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (685775047, 77, 27963, 38);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (962309690, 59, 26164, 23);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (602390173, 60, 87575, 7);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (814778959, 67, 28453, 40);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (994706467, 71, 85203, 3);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (796439987, 85, 17148, 27);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (699609424, 54, 65286, 30);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (666804854, 51, 57680, 28);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (469980250, 87, 11828, 2);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (285162311, 94, 85975, 37);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (838327286, 85, 65630, 29);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (686787104, 79, 98868, 36);
insert into paramedic (parid, numofunitpar , license_number, seniority) values (408699583, 86, 25785, 7);


insert into commander (comid, numofunitcom , rank) values (304630189, 78, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (854567801, 82, 'seren');
insert into commander (comid, numofunitcom , rank) values (597170275, 74, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (284456997, 58, 'segen');
insert into commander (comid, numofunitcom , rank) values (382340873, 52, 'seren');
insert into commander (comid, numofunitcom , rank) values (456542193, 56, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (239021751, 93, 'segen');
insert into commander (comid, numofunitcom , rank) values (784035019, 62, 'seren');
insert into commander (comid, numofunitcom , rank) values (458692899, 79, 'seren');
insert into commander (comid, numofunitcom , rank) values (513254138, 92, 'seren');
insert into commander (comid, numofunitcom , rank) values (733741583, 100, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (676175225, 98, 'seren');
insert into commander (comid, numofunitcom , rank) values (292483544, 98, 'segen');
insert into commander (comid, numofunitcom , rank) values (376752575, 90, 'seren');
insert into commander (comid, numofunitcom , rank) values (383487578, 68, 'seren');
insert into commander (comid, numofunitcom , rank) values (661373728, 78, 'segen');
insert into commander (comid, numofunitcom , rank) values (611570580, 76, 'segen');
insert into commander (comid, numofunitcom , rank) values (646340985, 69, 'seren');
insert into commander (comid, numofunitcom , rank) values (477760344, 71, 'seren');
insert into commander (comid, numofunitcom , rank) values (933504468, 53, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (262033320, 74, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (841282743, 76, 'seren');
insert into commander (comid, numofunitcom , rank) values (428132844, 68, 'seren');
insert into commander (comid, numofunitcom , rank) values (341861776, 90, 'seren');
insert into commander (comid, numofunitcom , rank) values (910219884, 79, 'segen');
insert into commander (comid, numofunitcom , rank) values (960434058, 67, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (253790977, 71, 'seren');
insert into commander (comid, numofunitcom , rank) values (470519370, 66, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (303704035, 67, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (246498308, 50, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (905791950, 98, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (539094185, 80, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (491631527, 100, 'seren');
insert into commander (comid, numofunitcom , rank) values (904977922, 85, 'segen');
insert into commander (comid, numofunitcom , rank) values (290248229, 97, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (525154766, 50, 'segen');
insert into commander (comid, numofunitcom , rank) values (853347828, 90, 'segen');
insert into commander (comid, numofunitcom , rank) values (212413254, 89, 'seren');
insert into commander (comid, numofunitcom , rank) values (950013240, 88, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (718205447, 85, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (829154190, 82, 'seren');
insert into commander (comid, numofunitcom , rank) values (898565763, 55, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (540096086, 58, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (212827892, 95, 'seren');
insert into commander (comid, numofunitcom , rank) values (267538350, 100, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (770752227, 100, 'segen');
insert into commander (comid, numofunitcom , rank) values (423902303, 84, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (851464440, 54, 'segen');
insert into commander (comid, numofunitcom , rank) values (878757230, 55, 'seren');
insert into commander (comid, numofunitcom , rank) values (943751248, 93, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (315040981, 70, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (568645505, 58, 'seren');
insert into commander (comid, numofunitcom , rank) values (974834557, 55, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (986196041, 59, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (349873296, 78, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (949985303, 59, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (435066258, 62, 'seren');
insert into commander (comid, numofunitcom , rank) values (892421596, 63, 'segen');
insert into commander (comid, numofunitcom , rank) values (961258001, 94, 'seren');
insert into commander (comid, numofunitcom , rank) values (542542996, 67, 'segen');
insert into commander (comid, numofunitcom , rank) values (502004177, 73, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (547894176, 96, 'segen');
insert into commander (comid, numofunitcom , rank) values (207475924, 62, 'seren');
insert into commander (comid, numofunitcom , rank) values (812310509, 96, 'segen');
insert into commander (comid, numofunitcom , rank) values (664300005, 60, 'segen');
insert into commander (comid, numofunitcom , rank) values (572998981, 94, 'seren');
insert into commander (comid, numofunitcom , rank) values (532859077, 78, 'segen');
insert into commander (comid, numofunitcom , rank) values (255529737, 87, 'seren');
insert into commander (comid, numofunitcom , rank) values (907982686, 75, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (405264744, 68, 'seren');
insert into commander (comid, numofunitcom , rank) values (298523277, 59, 'seren');
insert into commander (comid, numofunitcom , rank) values (279384977, 86, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (651145540, 82, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (784432519, 58, 'segen');
insert into commander (comid, numofunitcom , rank) values (363248890, 60, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (997208593, 99, 'seren');
insert into commander (comid, numofunitcom , rank) values (583265109, 68, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (996173193, 58, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (920522812, 98, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (652561845, 52, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (858817699, 70, 'seren');
insert into commander (comid, numofunitcom , rank) values (853792205, 52, 'seren');
insert into commander (comid, numofunitcom , rank) values (202971454, 89, 'seren');
insert into commander (comid, numofunitcom , rank) values (684014460, 64, 'seren');
insert into commander (comid, numofunitcom , rank) values (618975238, 56, 'seren');
insert into commander (comid, numofunitcom , rank) values (358898272, 53, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (677030248, 86, 'seren');
insert into commander (comid, numofunitcom , rank) values (441471038, 84, 'seren');
insert into commander (comid, numofunitcom , rank) values (260059628, 75, 'seren');
insert into commander (comid, numofunitcom , rank) values (732240753, 75, 'segen');
insert into commander (comid, numofunitcom , rank) values (850542797, 73, 'seren');
insert into commander (comid, numofunitcom , rank) values (253691408, 61, 'segen');
insert into commander (comid, numofunitcom , rank) values (544116765, 85, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (849482254, 88, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (331016009, 82, 'seren');
insert into commander (comid, numofunitcom , rank) values (666147840, 97, 'seren');
insert into commander (comid, numofunitcom , rank) values (651059352, 93, 'seren');
insert into commander (comid, numofunitcom , rank) values (860073050, 58, 'seren');
insert into commander (comid, numofunitcom , rank) values (972131463, 63, 'seren');
insert into commander (comid, numofunitcom , rank) values (741658230, 65, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (860008864, 81, 'segen');
insert into commander (comid, numofunitcom , rank) values (353513208, 82, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (241733977, 90, 'segen');
insert into commander (comid, numofunitcom , rank) values (809166274, 89, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (512081851, 71, 'segen');
insert into commander (comid, numofunitcom , rank) values (697091316, 51, 'segen');
insert into commander (comid, numofunitcom , rank) values (545982654, 90, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (576916046, 82, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (270595190, 66, 'segen');
insert into commander (comid, numofunitcom , rank) values (202269236, 89, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (911587198, 79, 'seren');
insert into commander (comid, numofunitcom , rank) values (827362279, 52, 'seren');
insert into commander (comid, numofunitcom , rank) values (802905052, 79, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (870381417, 80, 'seren');
insert into commander (comid, numofunitcom , rank) values (466531974, 62, 'segen');
insert into commander (comid, numofunitcom , rank) values (647971318, 86, 'seren');
insert into commander (comid, numofunitcom , rank) values (397365962, 54, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (983765069, 70, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (624545158, 99, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (324388588, 87, 'segen');
insert into commander (comid, numofunitcom , rank) values (480126752, 80, 'segen');
insert into commander (comid, numofunitcom , rank) values (734245301, 71, 'seren');
insert into commander (comid, numofunitcom , rank) values (771557352, 69, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (739199329, 71, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (747260588, 86, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (991772982, 65, 'segen');
insert into commander (comid, numofunitcom , rank) values (503934257, 65, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (533018381, 76, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (756036230, 92, 'segen');
insert into commander (comid, numofunitcom , rank) values (398782703, 95, 'segen');
insert into commander (comid, numofunitcom , rank) values (625557300, 68, 'segen');
insert into commander (comid, numofunitcom , rank) values (649804152, 93, 'segen');
insert into commander (comid, numofunitcom , rank) values (924431918, 95, 'segen');
insert into commander (comid, numofunitcom , rank) values (218968243, 100, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (223777532, 87, 'seren');
insert into commander (comid, numofunitcom , rank) values (575689150, 89, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (557467944, 87, 'segen');
insert into commander (comid, numofunitcom , rank) values (563304428, 72, 'seren');
insert into commander (comid, numofunitcom , rank) values (579993618, 53, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (963878433, 61, 'seren');
insert into commander (comid, numofunitcom , rank) values (806108871, 64, 'seren');
insert into commander (comid, numofunitcom , rank) values (399009580, 62, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (869793772, 71, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (246090021, 58, 'segen');
insert into commander (comid, numofunitcom , rank) values (674603269, 82, 'seren');
insert into commander (comid, numofunitcom , rank) values (753362211, 66, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (835878394, 55, 'seren');
insert into commander (comid, numofunitcom , rank) values (800447824, 74, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (568991884, 89, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (755944606, 60, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (670592893, 72, 'segen');
insert into commander (comid, numofunitcom , rank) values (944241576, 57, 'segen');
insert into commander (comid, numofunitcom , rank) values (842162772, 72, 'seren');
insert into commander (comid, numofunitcom , rank) values (943380656, 61, 'segen');
insert into commander (comid, numofunitcom , rank) values (599945541, 97, 'seren');
insert into commander (comid, numofunitcom , rank) values (380538766, 96, 'segen');
insert into commander (comid, numofunitcom , rank) values (742296336, 70, 'seren');
insert into commander (comid, numofunitcom , rank) values (827819402, 76, 'segen');
insert into commander (comid, numofunitcom , rank) values (702401932, 58, 'seren');
insert into commander (comid, numofunitcom , rank) values (677345115, 55, 'seren');
insert into commander (comid, numofunitcom , rank) values (218995711, 99, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (823018259, 91, 'seren');
insert into commander (comid, numofunitcom , rank) values (427750823, 81, 'segen');
insert into commander (comid, numofunitcom , rank) values (547575756, 98, 'segen');
insert into commander (comid, numofunitcom , rank) values (287384023, 71, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (521150880, 58, 'seren');
insert into commander (comid, numofunitcom , rank) values (275313659, 60, 'segen');
insert into commander (comid, numofunitcom , rank) values (243861421, 85, 'segen');
insert into commander (comid, numofunitcom , rank) values (467106037, 84, 'seren');
insert into commander (comid, numofunitcom , rank) values (425757594, 65, 'segen');
insert into commander (comid, numofunitcom , rank) values (947219972, 68, 'segen');
insert into commander (comid, numofunitcom , rank) values (802782814, 55, 'seren');
insert into commander (comid, numofunitcom , rank) values (860800214, 67, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (328991545, 74, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (875472507, 92, 'segen');
insert into commander (comid, numofunitcom , rank) values (455289533, 84, 'seren');
insert into commander (comid, numofunitcom , rank) values (866507043, 75, 'segen');
insert into commander (comid, numofunitcom , rank) values (687494071, 60, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (584292152, 62, 'seren');
insert into commander (comid, numofunitcom , rank) values (706800733, 52, 'segen');
insert into commander (comid, numofunitcom , rank) values (812521770, 66, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (477869897, 72, 'segen');
insert into commander (comid, numofunitcom , rank) values (756525540, 98, 'seren');
insert into commander (comid, numofunitcom , rank) values (742283792, 58, 'segen');
insert into commander (comid, numofunitcom , rank) values (522958381, 57, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (855884233, 93, 'seren');
insert into commander (comid, numofunitcom , rank) values (693509106, 73, 'seren');
insert into commander (comid, numofunitcom , rank) values (403363213, 89, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (714444074, 65, 'segen');
insert into commander (comid, numofunitcom , rank) values (540554946, 85, 'ravseren');
insert into commander (comid, numofunitcom , rank) values (281692115, 95, 'seren');
insert into commander (comid, numofunitcom , rank) values (413474224, 89, 'segen');
insert into commander (comid, numofunitcom , rank) values (716242522, 53, 'segen');
insert into commander (comid, numofunitcom , rank) values (917431227, 91, 'segen');
insert into commander (comid, numofunitcom , rank) values (747514377, 56, 'segen');
insert into commander (comid, numofunitcom , rank) values (836900152, 77, 'segen');
insert into commander (comid, numofunitcom , rank) values (451155134, 68, 'seren');
insert into commander (comid, numofunitcom , rank) values (318728017, 70, 'segen');
insert into commander (comid, numofunitcom , rank) values (785352630, 58, 'segen');
insert into commander (comid, numofunitcom , rank) values (274439624, 77, 'seren');



select comid, rank, numofunitcom
from commander

select DOCID, LICENSE_NUMBER, SENIORITY, NUMOFUNITDOC
from doctor

select PARID, LICENSE_NUMBER, SENIORITY, NUMOFUNITPAR
from paramedic

select EQUID, EXPERTISE, NUMOFUNITEQI
from EQUIPMENT_MANAGER

select LICENSE_NUMBER, DRID, NUMOFUNITDRI
from driver

select MEDID, SENIORITY, NUMOFUNITMED
from medic




SELECT rank, COUNT(numofunitcom)
FROM commander
GROUP BY rank;


SELECT MAX(COUNT(numofunitdri))
FROM driver
GROUP BY numofunitdri;


SELECT docid
FROM doctor
WHERE numofunitdoc = 51
UNION
SELECT parid
FROM paramedic
WHERE numofunitpar = 51
UNION
SELECT medid
FROM medic
WHERE numofunitmed = 51;


SELECT DISTINCT seniority
FROM doctor NATURAL JOIN medic
WHERE numofunitdoc = numofunitmed;






UPDATE medic
SET seniority = 39
WHERE seniority = 38


UPDATE commander
SET rank = 'ravseren'
WHERE comid = 'seren'


Delete from driver
Where license_number = 6362578  or  license_number = 7188616


Delete from equipment_manager
Where numofuniteqi = 87  



CREATE OR REPLACE PROCEDURE get_commander_info(p_comID IN commander.comID%TYPE) IS
  v_comID commander.comID%TYPE;
  v_rank commander.rank%TYPE;
  v_numofunitcom commander.numofunitcom%TYPE;
BEGIN
  SELECT comID, rank, numofunitcom
  INTO v_comID, v_rank, v_numofunitcom
  FROM commander
  WHERE comID = p_comID;
  
  DBMS_OUTPUT.PUT_LINE('comID: ' || v_comID || ', rank: ' || v_rank || ', numofunitcom: ' || v_numofunitcom);
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('No commander found with comID: ' || p_comID);
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
END;
/




CREATE OR REPLACE PROCEDURE get_equ_managers_expertise(p_expertise IN equipment_manager.expertise%TYPE) IS
BEGIN
  FOR r IN (SELECT equID, expertise, numofuniteqi, comID 
            FROM equipment_manager 
            WHERE expertise = p_expertise) 
  LOOP
    DBMS_OUTPUT.PUT_LINE('Equipment Manager ID: ' || r.equID || ', Expertise: ' || r.expertise || ', Number of Units: ' || r.numofuniteqi || ', Commander ID: ' || r.comID);
  END LOOP;
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('No equipment managers found with expertise: ' || p_expertise);
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
END;
/




CREATE OR REPLACE PROCEDURE get_doctors_by_seniority(p_seniority IN doctor.seniority%TYPE) IS
BEGIN
  FOR r IN (SELECT docID, license_number, seniority, numofunitdoc, comID, equID 
            FROM doctor 
            WHERE seniority > p_seniority) 
  LOOP
    DBMS_OUTPUT.PUT_LINE('Doctor ID: ' || r.docID || ', License Number: ' || r.license_number || ', Seniority: ' || r.seniority || ', Number of Units: ' || r.numofunitdoc || ', Commander ID: ' || r.comID || ', Equipment Manager ID: ' || r.equID);
  END LOOP;
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('No doctors found with seniority greater than: ' || p_seniority);
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
END;
/



CREATE OR REPLACE PROCEDURE find_driver_by_license_number(
    p_license_number IN INT
) IS
    v_driver driver%ROWTYPE;
BEGIN
    SELECT *
    INTO v_driver
    FROM driver
    WHERE license_number = p_license_number;

    IF v_driver.drID IS NOT NULL THEN
        DBMS_OUTPUT.PUT_LINE('Driver ID: ' || v_driver.drID || ', License Number: ' || v_driver.license_number || ', Number of Units: ' || v_driver.numofunitdri || ', Commander ID: ' || v_driver.comID);
    ELSE
        DBMS_OUTPUT.PUT_LINE('Driver with license number ' || p_license_number || ' not found.');
    END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No driver found with license number: ' || p_license_number);
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
END;
/




ALTER TABLE commander
ADD CONSTRAINT check_numofunitcom CHECK (numofunitcom BETWEEN 50 AND 100);

ALTER TABLE driver
ADD CONSTRAINT unique_license_number UNIQUE (license_number);

ALTER TABLE doctor
ADD CONSTRAINT check_doctor_seniority CHECK (seniority <= 40);

ALTER TABLE paramedic
ADD CONSTRAINT check_paramedic_seniority CHECK (seniority <= 40);

ALTER TABLE medic
ADD CONSTRAINT check_medic_seniority CHECK (seniority <= 40);





CREATE FUNCTION count_entities RETURN INT IS
    total_count INT := 0;
    temp_count INT;
BEGIN
    SELECT COUNT(*) INTO temp_count FROM commander;
    total_count := total_count + temp_count;

    SELECT COUNT(*) INTO temp_count FROM driver;
    total_count := total_count + temp_count;

    SELECT COUNT(*) INTO temp_count FROM equipment_manager;
    total_count := total_count + temp_count;

    SELECT COUNT(*) INTO temp_count FROM medic;
    total_count := total_count + temp_count;

    SELECT COUNT(*) INTO temp_count FROM doctor;
    total_count := total_count + temp_count;

    SELECT COUNT(*) INTO temp_count FROM paramedic;
    total_count := total_count + temp_count;

    RETURN total_count;
END count_entities;




CREATE OR REPLACE PROCEDURE update_paramedics IS
BEGIN
    UPDATE paramedic
    SET seniority = seniority + 1;

    DELETE FROM paramedic
    WHERE seniority = 41;
END update_paramedics;




SELECT count_entities() AS total_entities_before_update FROM dual;

CALL update_paramedics();

SELECT count_entities() AS total_entities_after_update FROM dual;









CREATE FUNCTION count_entities RETURN INT IS
    total_count INT := 0;
    temp_count INT;
BEGIN
    SELECT COUNT(*) INTO temp_count FROM commander;
    total_count := total_count + temp_count;

    SELECT COUNT(*) INTO temp_count FROM driver;
    total_count := total_count + temp_count;

    SELECT COUNT(*) INTO temp_count FROM equipment_manager;
    total_count := total_count + temp_count;

    SELECT COUNT(*) INTO temp_count FROM medic;
    total_count := total_count + temp_count;

    SELECT COUNT(*) INTO temp_count FROM doctor;
    total_count := total_count + temp_count;

    SELECT COUNT(*) INTO temp_count FROM paramedic;
    total_count := total_count + temp_count;

    RETURN total_count;
END count_entities;




CREATE OR REPLACE PROCEDURE update_paramedics IS
BEGIN
    UPDATE paramedic
    SET seniority = seniority + 1;

    DELETE FROM paramedic
    WHERE seniority = 41;
END update_paramedics;




SELECT count_entities() AS total_entities_before_update FROM dual;

CALL update_paramedics();

SELECT count_entities() AS total_entities_after_update FROM dual;






























































































































































































































