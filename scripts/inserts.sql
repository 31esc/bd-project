INSERT INTO project.User (firstname, surname, email, bank_acc_number, telephone) VALUES
('Carol', 'Jones', 'carol.jones@example.com', '4017277279110792', '89962084635'),
('Tammy', 'Brown', 'tammy.brown@example.com', '4108608295682754', '89949467521'),
('Keith', 'Barnes', 'keith.barnes@example.com', '4934324308114872', '89016203663'),
('Isaac', 'Richardson', 'isaac.richardson@example.com', '4475371889529528', '89526146756'),
('Kyle', 'Medina', 'kyle.medina@example.com', '4978006511398114', '87636764104'),
('Brian', 'Parks', 'brian.parks@example.com', '4141131520066148', '89585316213'),
('Michael', 'Watson', 'michael.watson@example.com', '4966835328701845', '89913481016'),
('Ben', 'Hill', 'ben.hill@example.com', '4114553961484931', '89956513574'),
('Betty', 'Hughes', 'betty.hughes@example.com', '4725753897955852', '89839996753'),
('Mary', 'Howard', 'mary.howard@example.com', '4469465231737934', '89014825154'),
('Joseph', 'Collins', 'joseph.collins@example.com', '4733929657859597', '89012313770'),
('Lori', 'Montgomery', 'lori.montgomery@example.com', '4086056882477343', '89839990682'),
('Kathy', 'Briggs', 'kathy.briggs@example.com', '4213319187832448', '89508885572'),
('Melissa', 'Leonard', 'melissa.leonard@example.com', '4050305305053583', '89049594180'),
('Tony', 'Tucker', 'tony.tucker@example.com', '4907084523203248', '89913770806'),
('Robert', 'Lucas', 'robert.lucas@example.com', '4489192293158595', '89014793653'),
('Bonnie', 'White', 'bonnie.white@example.com', '4207827812144565', '89047241558'),
('Henry', 'Holmes', 'henry.holmes@example.com', '4832638709937711', '89585809443'),
('Ricky', 'Martin', 'ricky.martin@example.com', '4762650055638094', '89059484558'),
('Joy', 'Barker', 'joy.barker@example.com', '4506070028737512', '89004674839');

INSERT INTO project.User_History (user_id, bank_acc_number, telephone, history_data) VALUES
(1, '4687927118632831', '89047886792', CURRENT_DATE - INTERVAL '1 day'),
(2, '4234636268786465', '89585457628', CURRENT_DATE - INTERVAL '2 days'),
(3, '4913467253583131', '89012392430', CURRENT_DATE - INTERVAL '3 days'),
(4, '4495969943567115', '89951618218', CURRENT_DATE - INTERVAL '4 days'),
(5, '4938624577457647', '89502728640', CURRENT_DATE - INTERVAL '5 days'),
(6, '4934514040817150', '87472240942', CURRENT_DATE - INTERVAL '6 days'),
(7, '4789976153715131', '89010823744', CURRENT_DATE - INTERVAL '7 days'),
(8, '4567348192732824', '89920596197', CURRENT_DATE - INTERVAL '8 days'),
(9, '4408653249472826', '89086098804', CURRENT_DATE - INTERVAL '9 days'),
(10, '4676071185990906', '89958405678', CURRENT_DATE - INTERVAL '10 days'),
(11, '4773157222638335', '89708834401', CURRENT_DATE - INTERVAL '11 days'),
(12, '4300532504036220', '89588352224', CURRENT_DATE - INTERVAL '12 days'),
(13, '4256613603800924', '89980971201', CURRENT_DATE - INTERVAL '13 days'),
(14, '4330437973682419', '89027172588', CURRENT_DATE - INTERVAL '14 days'),
(15, '4113512210486361', '89983992262', CURRENT_DATE - INTERVAL '15 days'),
(16, '4375095555178523', '89009043595', CURRENT_DATE - INTERVAL '16 days'),
(17, '4386519216580170', '89911153364', CURRENT_DATE - INTERVAL '17 days'),
(18, '4718308383874098', '89086092878', CURRENT_DATE - INTERVAL '18 days'),
(19, '4901998743725423', '89004052633', CURRENT_DATE - INTERVAL '19 days'),
(20, '4126360955030456', '89510870317', CURRENT_DATE - INTERVAL '20 days'),
(1, '4656006323727632', '89966992225', CURRENT_DATE - INTERVAL '21 days'),
(2, '4618422569770789', '89047268570', CURRENT_DATE - INTERVAL '22 days'),
(3, '4739169896409169', '89003305976', CURRENT_DATE - INTERVAL '23 days'),
(4, '4493879404176862', '89962963406', CURRENT_DATE - INTERVAL '24 days'),
(5, '4500707134542130', '89011501342', CURRENT_DATE - INTERVAL '25 days'),
(6, '4440611668065356', '89012106036', CURRENT_DATE - INTERVAL '26 days'),
(7, '4508794516009161', '89083761755', CURRENT_DATE - INTERVAL '27 days'),
(8, '4758953134384805', '89789511958', CURRENT_DATE - INTERVAL '28 days'),
(9, '4879614396937557', '89083456423', CURRENT_DATE - INTERVAL '29 days'),
(10, '4231522349833331', '89325712734', CURRENT_DATE - INTERVAL '30 days'),
(11, '4130880839538568', '89027123616', CURRENT_DATE - INTERVAL '31 days'),
(12, '4269668968388753', '89002008232', CURRENT_DATE - INTERVAL '32 days'),
(14, '4004913597901190', '89589555716', CURRENT_DATE - INTERVAL '33 days'),
(13, '4022190967202925', '8911370833', CURRENT_DATE - INTERVAL '34 days'),
(17, '4462254508953581', '89585044947', CURRENT_DATE - INTERVAL '35 days');

INSERT INTO project.Driver (firstname, surname, email, bank_acc_number, telephone, date_of_employment) VALUES
('Phillip', 'Thomas', 'phillip.thomas@example.com', '4655096448033785', '89089587026', '2024-01-01'),
('Jordan', 'Mitchell', 'jordan.mitchell@example.com', '4662720452966314', '89084318048', '2024-01-02'),
('Colleen', 'Daniel', 'colleen.daniel@example.com', '4769180762300310', '9955931326', '2024-01-03'),
('Nancy', 'Davis', 'nancy.davis@example.com', '4526752073353164', '9010139680', '2024-01-04'),
('John', 'Massey', 'john.massey@example.com', '4562327497264951', '9184658669', '2024-01-05'),
('Dorothy', 'Lee', 'dorothy.lee@example.com', '4483767984034829', '9023179205', '2024-01-06'),
('Timothy', 'Brown', 'timothy.brown@example.com', '4632975141853607', '9002199773', '2024-01-07'),
('James', 'Evans', 'james.evans@example.com', '4058167014471361', '9022416992', '2024-01-08'),
('Howard', 'Lewis', 'howard.lewis@example.com', '4007489591646443', '9018770162', '2024-01-09'),
('Monica', 'Moore', 'monica.moore@example.com', '4736262115524018', '9365818712', '2024-01-10'),
('Henry', 'Nash', 'henry.nash@example.com', '4735447591037731', '9580110966', '2024-01-11'),
('Samuel', 'Williams', 'samuel.williams@example.com', '4012865444295210', '9089342069', '2024-01-12'),
('Edward', 'Goodman', 'edward.goodman@example.com', '4710757883942433', '9532288526', '2024-01-13'),
('William', 'Johnson', 'william.johnson@example.com', '4449328155477645', '9781305170', '2024-01-14'),
('Jimmy', 'Mcdonald', 'jimmy.mcdonald@example.com', '4243946515676099', '9014794191', '2024-01-15'),
('Lester', 'Colon', 'lester.colon@example.com', '4382158011009319', '7009518049', '2024-01-16'),
('George', 'Greene', 'george.greene@example.com', '4124823891354597', '9509452114', '2024-01-17'),
('John', 'Armstrong', 'john.armstrong@example.com', '4622404363220132', '9957795793', '2024-01-18'),
('Kenneth', 'Jones', 'kenneth.jones@example.com', '4816759982393636', '9088582201', '2024-01-19'),
('Robert', 'Lewis', 'robert.lewis@example.com', '4876685379669485', '9327556563', '2024-01-20');

INSERT INTO project.Trip_Details (user_id, driver_id, start_location, destination, start_time, end_time, price) VALUES
(1, 1, POINT(55.751244, 37.618423), POINT(55.755826, 37.617299), '2024-01-01 08:00:00', '2024-01-01 10:00:00', 500),
(1, 2, POINT(55.751245, 37.618424), POINT(55.755827, 37.617300), '2024-01-02 09:00:00', '2024-01-02 11:00:00', 520),
(3, 3, POINT(55.751246, 37.618425), POINT(55.755828, 37.617301), '2024-01-03 10:00:00', '2024-01-03 12:00:11', 550),
(2, 4, POINT(55.751247, 37.618426), POINT(55.755829, 37.617302), '2024-01-04 11:22:00', '2024-01-04 13:00:00', 480),
(5, 5, POINT(55.751248, 37.618427), POINT(55.755830, 37.617303), '2024-01-05 12:22:00', '2024-01-05 14:01:00', 510),
(3, 6, POINT(55.751249, 37.618428), POINT(55.755831, 37.617304), '2024-01-06 13:00:11', '2024-01-06 15:00:00', 490),
(7, 7, POINT(55.751250, 37.618429), POINT(55.755832, 37.617305), '2024-01-07 14:22:00', '2024-01-07 16:00:01', 530),
(7, 8, POINT(55.751251, 37.618430), POINT(55.755833, 37.617306), '2024-01-08 15:00:00', '2024-01-08 17:12:00', 480),
(9, 9, POINT(55.751252, 37.618431), POINT(55.755834, 37.617307), '2024-01-09 16:00:00', '2024-01-09 18:00:00', 540),
(14, 10, POINT(55.751253, 37.618432), POINT(55.755835, 37.617308), '2024-01-10 17:00:00', '2024-01-10 19:00:00', 520),
(10, 11, POINT(55.751254, 37.618433), POINT(55.755836, 37.617309), '2024-01-11 18:00:00', '2024-01-11 20:22:00', 490),
(12, 12, POINT(55.751255, 37.618434), POINT(55.755837, 37.617310), '2024-01-12 19:00:00', '2024-01-12 21:00:00', 500),
(11, 13, POINT(55.751256, 37.618435), POINT(55.755838, 37.617311), '2024-01-13 20:00:00', '2024-01-13 22:00:14', 1010),
(14, 14, POINT(55.751257, 37.618436), POINT(55.755839, 37.617312), '2024-01-14 21:00:11', '2024-01-14 23:00:00', 830),
(15, 15, POINT(55.751258, 37.618437), POINT(55.755840, 37.617313), '2024-01-15 22:00:00', '2024-01-15 00:00:11', 1980),
(16, 16, POINT(55.751259, 37.618438), POINT(55.755841, 37.617314), '2024-01-16 23:22:00', '2024-01-16 01:00:00', 550),
(17, 17, POINT(55.751260, 37.618439), POINT(55.755842, 37.617315), '2024-01-17 00:00:00', '2024-01-17 02:00:00', 490),
(19, 18, POINT(55.751261, 37.618440), POINT(55.755843, 37.617316), '2024-01-18 01:15:11', '2024-01-18 03:12:00', 510),
(19, 19, POINT(55.751262, 37.618441), POINT(55.755844, 37.617317), '2024-01-19 02:00:00', '2024-01-19 04:00:00', 520),
(20, 20, POINT(55.751263, 37.618442), POINT(55.755845, 37.617318), '2024-01-20 03:00:00', '2024-01-20 05:00:00', 540),
(1, 3, POINT(55.751264, 37.618443), POINT(55.755846, 37.617319), '2024-01-21 04:00:00', '2024-01-21 06:00:00', 500),
(4, 2, POINT(55.751265, 37.618444), POINT(55.755847, 37.617320), '2024-01-22 05:00:00', '2024-01-22 07:00:00', 520),
(14, 6, POINT(55.751268, 37.618447), POINT(55.755850, 37.617323), '2024-01-25 08:00:00', '2024-01-25 10:00:00', 510),
(2, 7, POINT(55.751269, 37.618448), POINT(55.755851, 37.617324), '2024-01-26 09:00:00', '2024-01-26 11:00:00', 490),
(1, 8, POINT(55.751270, 37.618449), POINT(55.755852, 37.617325), '2024-01-27 10:00:00', '2024-01-27 12:00:00', 530),
(16, 3, POINT(55.751271, 37.618450), POINT(55.755853, 37.617326), '2024-01-28 11:15:15', '2024-01-28 13:00:00', 480),
(2, 7, POINT(55.751272, 37.618451), POINT(55.755854, 37.617327), '2024-01-29 12:00:00', '2024-01-29 14:00:14', 540),
(2, 2, POINT(55.751273, 37.618452), POINT(55.755855, 37.617328), '2024-01-30 13:00:15', '2024-01-30 15:00:00', 520),
(1, 3, POINT(55.751274, 37.618453), POINT(55.755856, 37.617329), '2024-01-31 14:12:12', '2024-01-31 16:15:00', 550),
(4, 4, POINT(55.751275, 37.618454), POINT(55.755857, 37.617330), '2024-02-01 15:00:00', '2024-02-01 17:00:00', 480),
(5, 5, POINT(55.751276, 37.618455), POINT(55.755858, 37.617331), '2024-02-02 16:00:00', '2024-02-02 18:00:00', 510),
(6, 11, POINT(55.751277, 37.618456), POINT(55.755859, 37.617332), '2024-02-03 17:14:41', '2024-02-03 19:00:15', 490),
(2, 7, POINT(55.751278, 37.618457), POINT(55.755860, 37.617333), '2024-02-04 18:00:00', '2024-02-04 20:00:00', 530),
(8, 3, POINT(55.751279, 37.618458), POINT(55.755861, 37.617334), '2024-02-05 19:00:00', '2024-02-05 21:00:00', 480),
(9, 1, POINT(55.751280, 37.618459), POINT(55.755862, 37.617335), '2024-02-06 20:00:14', '2024-02-06 22:00:00', 540),
(10, 18, POINT(55.751281, 37.618460), POINT(55.755863, 37.617336), '2024-02-07 21:00:00', '2024-02-07 23:00:11', 1520),
(11, 18, POINT(55.751282, 37.618461), POINT(55.755864, 37.617337), '2024-02-08 22:14:00', '2024-02-08 00:15:00', 490),
(12, 19, POINT(55.751283, 37.618462), POINT(55.755865, 37.617338), '2024-02-09 23:00:14', '2024-02-09 01:00:00', 500),
(13, 20, POINT(55.751284, 37.618463), POINT(55.755866, 37.617339), '2024-02-10 00:00:00', '2024-02-10 02:00:00', 510);

INSERT INTO project.Tariff (model, tariff) VALUES
('Toyota Camry', 'econom'),
('Hyundai Sonata', 'econom'),
('Kia Optima', 'comfortplus'),
('Audi A6', 'vip'),
('Mercedes-Benz S-Class', 'ultimate'),
('BMW 5 Series', 'ultimate'),
('Lexus ES', 'business'),
('Volvo S90', 'comfortplus'),
('Tesla Model S', 'vip'),
('Jaguar XJ', 'ultimate'),
('Volkswagen Passat', 'econom'),
('Honda Accord', 'business'),
('Mazda 6', 'comfortplus'),
('Lincoln Continental', 'vip'),
('Porsche Panamera', 'ultimate'),
('Chevrolet Malibu', 'econom'),
('Ford Fusion', 'business'),
('Subaru Legacy', 'comfortplus'),
('Cadillac CT6', 'vip'),
('Infiniti Q70', 'ultimate'),
('Nissan Altima', 'econom'),
('Acura TLX', 'business'),
('Buick LaCrosse', 'comfortplus'),
('Genesis G80', 'vip'),
('Chrysler 300', 'ultimate'),
('Peugeot 508', 'econom'),
('Citroen C5', 'econom'),
('Renault Talisman', 'comfortplus'),
('Skoda Superb', 'vip'),
('Opel Insignia', 'ultimate');

INSERT INTO project.Car (model, registration_number, color) VALUES
('Toyota Camry', 'A123BC77', 'Black'),
('Toyota Camry', 'B234CD88', 'White'),
('Toyota Camry', 'C345DE99', 'Silver'),
('Hyundai Sonata', 'D456EF00', 'Red'),
('Hyundai Sonata', 'E567FG11', 'Blue'),
('Hyundai Sonata', 'F678GH22', 'Gray'),
('Kia Optima', 'G789HI33', 'Black'),
('Kia Optima', 'H890IJ44', 'White'),
('Kia Optima', 'I901JK55', 'Silver'),
('Audi A6', 'J012KL66', 'Red'),
('Audi A6', 'K123LM77', 'Blue'),
('Audi A6', 'L234MN88', 'Gray'),
('Mercedes-Benz S-Class', 'M345NO99', 'Black'),
('Mercedes-Benz S-Class', 'N456OP00', 'White'),
('Mercedes-Benz S-Class', 'O567PQ11', 'Silver'),
('BMW 5 Series', 'P678QR22', 'Red'),
('BMW 5 Series', 'Q789RS33', 'Blue'),
('BMW 5 Series', 'R890ST44', 'Gray'),
('Lexus ES', 'S901TU55', 'Black'),
('Lexus ES', 'T012UV66', 'White'),
('Lexus ES', 'U123VW77', 'Silver'),
('Volvo S90', 'V234WX88', 'Red'),
('Volvo S90', 'W345XY99', 'Blue'),
('Volvo S90', 'X456YZ00', 'Gray'),
('Tesla Model S', 'Y567ZAB11', 'Black'),
('Tesla Model S', 'Z678ABC22', 'White'),
('Tesla Model S', 'A789BCD33', 'Silver'),
('Jaguar XJ', 'B890CDE44', 'Red'),
('Jaguar XJ', 'C901DEF55', 'Blue'),
('Jaguar XJ', 'D012EFG66', 'Gray');


INSERT INTO project.Driver_Car (car_id, driver_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 1),
(22, 2),
(23, 3),
(24, 4),
(25, 5),
(26, 6),
(27, 7),
(28, 8),
(29, 9),
(30, 10);
