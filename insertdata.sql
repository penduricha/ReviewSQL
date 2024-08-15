# use w3schooldata;
#customer
# insert into customers (customerID,
#     customerName,
#     contactName,
#     address,
#     city,
#     postalCode,
#     country) values
#shipper
insert into shipper(shipperID, shipperName, phone) values (1,'Speedy Express', '(503) 555-9831'),
(2,'United Package','(503) 555-3199'),
(3,'Federal Shipping','(503) 555-9931');
#customer
INSERT INTO customers (customerID, customerName, contactName, address, city, postalCode, country)
VALUES
    (1, 'Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', '12209', 'Germany'),
    (2, 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Avda. de la Constitución 2222', 'México D.F.', '05021', 'Mexico'),
    (3, 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mataderos 2312', 'México D.F.', '05023', 'Mexico'),
    (4, 'Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'London', 'WA1 1DP', 'UK'),
    (5, 'Berglunds snabbköp', 'Christina Berglund', 'Berguvsvägen 8', 'Luleå', 'S-958 22', 'Sweden'),
    (6, 'Blauer See Delikatessen', 'Hanna Moos', 'Forsterstr. 57', 'Mannheim', '68306', 'Germany'),
    (7, 'Blondel père et fils', 'Frédérique Citeaux', '24, place Kléber', 'Strasbourg', '67000', 'France'),
    (8, 'Bólido Comidas preparadas', 'Martín Sommer', 'C/ Araquil, 67', 'Madrid', '28023', 'Spain'),
    (9, 'Bon app''', 'Laurence Lebihans', '12, rue des Bouchers', 'Marseille', '13008', 'France'),
    (10, 'Bottom-Dollar Marketse', 'Elizabeth Lincoln', '23 Tsawassen Blvd.', 'Tsawassen', 'T2F 8M4', 'Canada');
INSERT INTO customers (customerID, customerName, contactName, address, city, postalCode, country)
VALUES
    (11, 'B''s Beverages', 'Victoria Ashworth', 'Fauntleroy Circus', 'London', 'EC2 5NT', 'UK'),
    (12, 'Cactus Comidas para llevar', 'Patricio Simpson', 'Cerrito 333', 'Buenos Aires', '1010', 'Argentina'),
    (13, 'Centro comercial Moctezuma', 'Francisco Chang', 'Sierras de Granada 9993', 'México D.F.', '05022', 'Mexico'),
    (14, 'Chop-suey Chinese', 'Yang Wang', 'Hauptstr. 29', 'Bern', '3012', 'Switzerland'),
    (15, 'Comércio Mineiro', 'Pedro Afonso', 'Av. dos Lusíadas, 23', 'São Paulo', '05432-043', 'Brazil'),
    (16, 'Consolidated Holdings', 'Elizabeth Brown', 'Berkeley Gardens 12 Brewery', 'London', 'WX1 6LT', 'UK'),
    (17, 'Drachenblut Delikatessend', 'Sven Ottlieb', 'Walserweg 21', 'Aachen', '52066', 'Germany'),
    (18, 'Du monde entier', 'Janine Labrune', '67, rue des Cinquante Otages', 'Nantes', '44000', 'France'),
    (19, 'Eastern Connection', 'Ann Devon', '35 King George', 'London', 'WX3 6FW', 'UK'),
    (20, 'Ernst Handel', 'Roland Mendel', 'Kirchgasse 6', 'Graz', '8010', 'Austria');
INSERT INTO customers (customerID, customerName, contactName, address, city, postalCode, country)
VALUES
    (21, 'Familia Arquibaldo', 'Aria Cruz', 'Rua Orós, 92', 'São Paulo', '05442-030', 'Brazil'),
    (22, 'FISSA Fabrica Inter. Salchichas S.A.', 'Diego Roel', 'C/ Moralzarzal, 86', 'Madrid', '28034', 'Spain'),
    (23, 'Folies gourmandes', 'Martine Rancé', '184, chaussée de Tournai', 'Lille', '59000', 'France'),
    (24, 'Folk och fä HB', 'Maria Larsson', 'Åkergatan 24', 'Bräcke', 'S-844 67', 'Sweden'),
    (25, 'Frankenversand', 'Peter Franken', 'Berliner Platz 43', 'München', '80805', 'Germany'),
    (26, 'France restauration', 'Carine Schmitt', '54, rue Royale', 'Nantes', '44000', 'France'),
    (27, 'Franchi S.p.A.', 'Paolo Accorti', 'Via Monte Bianco 34', 'Torino', '10100', 'Italy'),
    (28, 'Furia Bacalhau e Frutos do Mar', 'Lino Rodriguez ', 'Jardim das rosas n. 32', 'Lisboa', '1675', 'Portugal'),
    (29, 'Galería del gastrónomo', 'Eduardo Saavedra', 'Rambla de Cataluña, 23', 'Barcelona', '08022', 'Spain'),
    (30, 'Godos Cocina Típica', 'José Pedro Freyre', 'C/ Romero, 33', 'Sevilla', '41101', 'Spain'),
    (31, 'Gourmet Lanchonetes', 'André Fonseca', 'Av. Brasil, 442', 'Campinas', '04876-786', 'Brazil'),
    (32, 'Great Lakes Food Market', 'Howard Snyder', '2732 Baker Blvd.', 'Eugene', '97403', 'USA'),
    (33, 'GROSELLA-Restaurante', 'Manuel Pereira', '5ª Ave. Los Palos Grandes', 'Caracas', '1081', 'Venezuela'),
    (34, 'Hanari Carnes', 'Mario Pontes', 'Rua do Paço, 67', 'Rio de Janeiro', '05454-876', 'Brazil'),
    (35, 'HILARIÓN-Abastos', 'Carlos Hernández', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', '5022', 'Venezuela'),
    (36, 'Hungry Coyote Import Store', 'Yoshi Latimer', 'City Center Plaza 516 Main St.', 'Elgin', '97827', 'USA'),
    (37, 'Hungry Owl All-Night Grocers', 'Patricia McKenna', '8 Johnstown Road', 'Cork', '', 'Ireland'),
    (38, 'Island Trading', 'Helen Bennett', 'Garden House Crowther Way', 'Cowes', 'PO31 7PJ', 'UK'),
    (39, 'Königlich Essen', 'Philip Cramer', 'Maubelstr. 90', 'Brandenburg', '14776', 'Germany'),
    (40, 'La corne d''abondance', 'Daniel Tonini', '67, avenue de l''Europe', 'Versailles', '78000', 'France');
INSERT INTO customers (customerID, customerName, contactName, address, city, postalCode, country)
VALUES
    (41, 'La maison d''Asie', 'Annette Roulet', '1 rue Alsace-Lorraine', 'Toulouse', '31000', 'France'),
    (42, 'Laughing Bacchus Wine Cellars', 'Yoshi Tannamuri', '1900 Oak St.', 'Vancouver', 'V3F 2K1', 'Canada'),
    (43, 'Lazy K Kountry Store', 'John Steel', '12 Orchestra Terrace', 'Walla Walla', '99362', 'USA'),
    (44, 'Lehmanns Marktstand', 'Renate Messner', 'Magazinweg 7', 'Frankfurt a.M.', '60528', 'Germany'),
    (45, 'Let''s Stop N Shop', 'Jaime Yorres', '87 Polk St. Suite 5', 'San Francisco', '94117', 'USA'),
    (46, 'LILA-Supermercado', 'Carlos González', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', '3508', 'Venezuela'),
    (47, 'LINO-Delicateses', 'Felipe Izquierdo', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', '4980', 'Venezuela'),
    (48, 'Lonesome Pine Restaurant', 'Fran Wilson', '89 Chiaroscuro Rd.', 'Portland', '97219', 'USA'),
    (49, 'Magazzini Alimentari Riuniti', 'Giovanni Rovelli', 'Via Ludovico il Moro 22', 'Bergamo', '24100', 'Italy'),
    (50, 'Maison Dewey', 'Catherine Dewey', 'Rue Joseph-Bens 532', 'Bruxelles', 'B-1180', 'Belgium'),
    (51, 'Mère Paillarde', 'Jean Fresnière', '43 rue St. Laurent', 'Montréal', 'H1J 1C3', 'Canada'),
    (52, 'Morgenstern Gesundkost', 'Alexander Feuer', 'Heerstr. 22', 'Leipzig', '04179', 'Germany'),
    (53, 'North/South', 'Simon Crowther', 'South House 300 Queensbridge', 'London', 'SW7 1RZ', 'UK'),
    (54, 'Océano Atlántico Ltda.', 'Yvonne Moncada', 'Ing. Gustavo Moncada 8585 Piso 20-A', 'Buenos Aires', '1010', 'Argentina'),
    (55, 'Old World Delicatessen', 'Rene Phillips', '2743 Bering St.', 'Anchorage', '99508', 'USA'),
    (56, 'Ottilies Käseladen', 'Henriette Pfalzheim', 'Mehrheimerstr. 369', 'Köln', '50739', 'Germany'),
    (57, 'Paris spécialités', 'Marie Bertrand', '265, boulevard Charonne', 'Paris', '75012', 'France'),
    (58, 'Pericles Comidas clásicas', 'Guillermo Fernández', 'Calle Dr. Jorge Cash 321', 'México D.F.', '05033', 'Mexico'),
    (59, 'Piccolo und mehr', 'Georg Pipps', 'Geislweg 14', 'Salzburg', '5020', 'Austria'),
    (60, 'Princesa Isabel Vinhoss', 'Isabel de Castro', 'Estrada da saúde n. 58', 'Lisboa', '1756', 'Portugal');
INSERT INTO customers (customerID, customerName, contactName, address, city, postalCode, country)
VALUES
    (61, 'Que Delícia', 'Bernardo Batista', 'Rua da Panificadora, 12', 'Rio de Janeiro', '02389-673', 'Brazil'),
    (62, 'Queen Cozinha', 'Lúcia Carvalho', 'Alameda dos Canàrios, 891', 'São Paulo', '05487-020', 'Brazil'),
    (63, 'QUICK-Stop', 'Horst Kloss', 'Taucherstraße 10', 'Cunewalde', '01307', 'Germany'),
    (64, 'Rancho grande', 'Sergio Gutiérrez', 'Av. del Libertador 900', 'Buenos Aires', '1010', 'Argentina'),
    (65, 'Rattlesnake Canyon Grocery', 'Paula Wilson', '2817 Milton Dr.', 'Albuquerque', '87110', 'USA'),
    (66, 'Reggiani Caseifici', 'Maurizio Moroni', 'Strada Provinciale 124', 'Reggio Emilia', '42100', 'Italy'),
    (67, 'Ricardo Adocicados', 'Janete Limeira', 'Av. Copacabana, 267', 'Rio de Janeiro', '02389-890', 'Brazil'),
    (68, 'Richter Supermarkt', 'Michael Holz', 'Grenzacherweg 237', 'Genève', '1203', 'Switzerland'),
    (69, 'Romero y tomillo', 'Alejandra Camino', 'Gran Vía, 1', 'Madrid', '28001', 'Spain'),
    (70, 'Santé Gourmet', 'Jonas Bergulfsen', 'Erling Skakkes gate 78', 'Stavern', '4110', 'Norway'),
    (71, 'Save-a-lot Markets', 'Jose Pavarotti', '187 Suffolk Ln.', 'Boise', '83720', 'USA'),
    (72, 'Seven Seas Imports', 'Hari Kumar', '90 Wadhurst Rd.', 'London', 'OX15 4NB', 'UK'),
    (73, 'Simons bistro', 'Jytte Petersen', 'Vinbæltet 34', 'København', '1734', 'Denmark'),
    (74, 'Spécialités du monde', 'Dominique Perrier', '25, rue Lauriston', 'Paris', '75016', 'France'),
    (75, 'Split Rail Beer & Ale', 'Art Braunschweiger', 'P.O. Box 555', 'Lander', '82520', 'USA'),
    (76, 'Suprêmes délices', 'Pascale Cartrain', 'Boulevard Tirou, 255', 'Charleroi', 'B-6000', 'Belgium'),
    (77, 'The Big Cheese', 'Liz Nixon', '89 Jefferson Way Suite 2', 'Portland', '97201', 'USA'),
    (78, 'The Cracker Box', 'Liu Wong', '55 Grizzly Peak Rd.', 'Butte', '59801', 'USA'),
    (79, 'Toms Spezialitäten', 'Karin Josephs', 'Luisenstr. 48', 'Münster', '44087', 'Germany'),
    (80, 'Tortuga Restaurante', 'Miguel Angel Paolino', 'Avda. Azteca 123', 'México D.F.', '05033', 'Mexico'),
    (81, 'Tradição Hipermercados', 'Anabela Domingues', 'Av. Inês de Castro, 414', 'São Paulo', '05634-030', 'Brazil'),
    (82, 'Trail''s Head Gourmet Provisioners', 'Helvetius Nagy', '722 DaVinci Blvd.', 'Kirkland', '98034', 'USA'),
    (83, 'Vaffeljernet', 'Palle Ibsen', 'Smagsløget 45', 'Århus', '8200', 'Denmark'),
    (84, 'Victuailles en stock', 'Mary Saveley', '2, rue du Commerce', 'Lyon', '69004', 'France'),
    (85, 'Vins et alcools Chevalier', 'Paul Henriot', '59 rue de l''Abbaye', 'Reims', '51100', 'France'),
    (86, 'Die Wandernde Kuh', 'Rita Müller', 'Adenauerallee 900', 'Stuttgart', '70563', 'Germany'),
    (87, 'Wartian Herkku', 'Pirkko Koskitalo', 'Torikatu 38', 'Oulu', '90110', 'Finland'),
    (88, 'Wellington Importadora', 'Paula Parente', 'Rua do Mercado, 12', 'Resende', '08737-363', 'Brazil'),
    (89, 'White Clover Markets', 'Karl Jablonski', '305 - 14th Ave. S. Suite 3B', 'Seattle', '98128', 'USA'),
    (90, 'Wilman Kala', 'Matti Karttunen', 'Keskuskatu 45', 'Helsinki', '21240', 'Finland'),
    (91, 'Wolski', 'Zbyszek', 'ul. Filtrowa 68', 'Walla', '01-012', 'Poland');
INSERT INTO employee (employeeID, lastName, firstName, birthDate, photo, notes)
VALUES
    (1, 'Davolio', 'Nancy', '1968-12-08', 'EmpID1.pic', 'Education includes a BA in psychology from Colorado State University. She also completed (The Art of the Cold Call). Nancy is a member of ''Toastmasters International''.'),
    (2, 'Fuller', 'Andrew', '1952-02-19', 'EmpID2.pic', 'Andrew received his BTS commercial and a Ph.D. in international marketing from the University of Dallas. He is fluent in French and Italian and reads German. He joined the company as a sales representative, was promoted to sales manager and was then named vice president of sales. Andrew is a member of the Sales Management Roundtable, the Seattle Chamber of Commerce, and the Pacific Rim Importers Association.'),
    (3, 'Leverling', 'Janet', '1963-08-30', 'EmpID3.pic', 'Janet has a BS degree in chemistry from Boston College). She has also completed a certificate program in food retailing management. Janet was hired as a sales associate and was promoted to sales representative.'),
    (4, 'Peacock', 'Margaret', '1958-09-19', 'EmpID4.pic', 'Margaret holds a BA in English literature from Concordia College and an MA from the American Institute of Culinary Arts. She was temporarily assigned to the London office before returning to her permanent post in Seattle.'),
    (5, 'Buchanan', 'Steven', '1955-03-04', 'EmpID5.pic', 'Steven Buchanan graduated from St. Andrews University, Scotland, with a BSC degree. Upon joining the company as a sales representative, he spent 6 months in an orientation program at the Seattle office and then returned to his permanent post in London, where he was promoted to sales manager. Mr. Buchanan has completed the courses ''Successful Telemarketing'' and ''International Sales Management''. He is fluent in French.'),
    (6, 'Suyama', 'Michael', '1963-07-02', 'EmpID6.pic', 'Michael is a graduate of Sussex University (MA, economics) and the University of California at Los Angeles (MBA, marketing). He has also taken the courses ''Multi-Cultural Selling'' and ''Time Management for the Sales Professional''. He is fluent in Japanese and can read and write French, Portuguese, and Spanish.'),
    (7, 'King', 'Robert', '1960-05-29', 'EmpID7.pic', 'Robert King served in the Peace Corps and traveled extensively before completing his degree in English at the University of Michigan and then joining the company. After completing a course entitled ''Selling in Europe'', he was transferred to the London office.'),
    (8, 'Callahan', 'Laura', '1958-01-09', 'EmpID8.pic', 'Laura received a BA in psychology from the University of Washington. She has also completed a course in business French. She reads and writes French.'),
    (9, 'Dodsworth', 'Anne', '1969-07-02', 'EmpID9.pic', 'Anne has a BA degree in English from St. Lawrence College. She is fluent in French and German.'),
    (10, 'West', 'Adam', '1928-09-19', 'EmpID10.pic', 'An old chum');

#delete all data order

#order
INSERT INTO orders(orderID,customerID,employeeID,orderDate,shipperID) values (10248,	90, 	5, 	'7/4/1996', 	3 );
INSERT INTO orders(orderID,customerID,employeeID,orderDate,shipperID) values (10249, 81, 	6, 	'7/5/1996', 	1  );
INSERT INTO orders(orderID,customerID,employeeID,orderDate,shipperID) values (10250, 34, 	4, 	'7/8/1996', 	2  );
INSERT INTO orders(orderID,customerID,employeeID,orderDate,shipperID) values (10251, 84, 	3, 	'7/8/1996', 	1);
INSERT INTO orders(orderID,customerID,employeeID,orderDate,shipperID) values (10252, 76, 	4, 	'7/9/1996', 	2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10253, 34, 3, '7/10/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10254, 14, 5, '7/11/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10255, 68, 9, '7/12/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10256, 88, 3, '7/15/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10257, 35, 4, '7/16/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10258, 20, 1, '7/17/1996', 1);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10259, 13, 4, '7/18/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10260, 55, 4, '7/19/1996', 1);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10261, 61, 4, '7/19/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10262, 65, 8, '7/22/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10263, 20, 9, '7/23/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10264, 24, 6, '7/24/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10265, 7, 2, '7/25/1996', 1);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10266, 87, 3, '7/26/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10267, 25, 4, '7/29/1996', 1);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10268, 33, 8, '7/30/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10269, 89, 5, '7/31/1996', 1);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10270, 87, 1, '8/1/1996', 1);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10271, 75, 6, '8/1/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10272, 65, 6, '8/2/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10273, 63, 3, '8/5/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10274, 85, 6, '8/6/1996', 1);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10275, 49, 1, '8/7/1996', 1);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10276, 80, 8, '8/8/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10277, 52, 2, '8/9/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10278, 5, 8, '8/12/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10279, 44, 8, '8/13/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10280, 5, 2, '8/14/1996', 1);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10281, 69, 4, '8/14/1996', 1);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10282, 69, 4, '8/15/1996', 1);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10283, 46, 3, '8/16/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10284, 44, 4, '8/19/1996', 1);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10285, 63, 1, '8/20/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10286, 63, 8, '8/21/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10287, 67, 8, '8/22/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10288, 66, 4, '8/23/1996', 1);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10289, 11, 7, '8/26/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10290, 15, 8, '8/27/1996', 1);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10291, 61, 6, '8/27/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10292, 81, 1, '8/28/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10293, 80, 1, '8/29/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10294, 65, 4, '8/30/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10295, 85, 2, '9/2/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10296, 46, 6, '9/3/1996', 1);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10297, 7, 5, '9/4/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10298, 37, 6, '9/5/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10299, 67, 4, '9/6/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10300, 49, 2, '9/9/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10301, 86, 8, '9/9/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10302, 76, 4, '9/10/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10303, 30, 7, '9/11/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10304, 80, 1, '9/12/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10305, 55, 8, '9/13/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10306, 69, 1, '9/16/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10307, 48, 2, '9/17/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10308, 2, 7, '9/18/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10309, 37, 3, '9/19/1996', 1);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10310, 77, 8, '9/20/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10311, 18, 1, '9/20/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10312, 86, 2, '9/23/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10313, 63, 2, '9/24/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10314, 65, 1, '9/25/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10315, 38, 4, '9/26/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10316, 65, 1, '9/27/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10317, 48, 6, '9/30/1996', 1);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10318, 38, 8, '10/1/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10319, 80, 7, '10/2/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10320, 87, 5, '10/3/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10321, 38, 3, '10/3/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10322, 58, 7, '10/4/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10323, 39, 4, '10/7/1996', 1);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10324, 71, 9, '10/8/1996', 1);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10325, 39, 1, '10/9/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10326, 8, 4, '10/10/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10327, 24, 2, '10/11/1996', 1);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10328, 28, 4, '10/14/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10329, 75, 4, '10/15/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10330, 46, 3, '10/16/1996', 1);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10331, 9, 9, '10/16/1996', 1);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10332, 51, 3, '10/17/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10333, 87, 5, '10/18/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10334, 84, 8, '10/21/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10335, 37, 7, '10/22/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10336, 60, 7, '10/23/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10337, 25, 4, '10/24/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10338, 55, 4, '10/25/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10339, 51, 2, '10/28/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10340, 9, 1, '10/29/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10341, 73, 7, '10/29/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10342, 25, 4, '10/30/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10343, 44, 4, '10/31/1996', 1);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10344, 89, 4, '11/1/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10345, 63, 2, '11/4/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10346, 65, 3, '11/5/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10347, 21, 4, '11/6/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10348, 86, 4, '11/7/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10349, 75, 7, '11/8/1996', 1);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10350, 41, 6, '11/11/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10351, 20, 1, '11/11/1996', 1);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10352, 28, 3, '11/12/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10353, 59, 7, '11/13/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10354, 58, 8, '11/14/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10355, 4, 6, '11/15/1996', 1);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10356, 86, 6, '11/18/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10357, 46, 1, '11/19/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10358, 41, 5, '11/20/1996', 1);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10359, 72, 5, '11/21/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10360, 7, 4, '11/22/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10361, 63, 1, '11/22/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10362, 9, 3, '11/25/1996', 1);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10363, 17, 4, '11/26/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10364, 19, 1, '11/26/1996', 1);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10365, 3, 3, '11/27/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10366, 29, 8, '11/28/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10367, 83, 7, '11/28/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10368, 20, 2, '11/29/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10369, 75, 8, '12/2/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10370, 14, 6, '12/3/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10371, 41, 1, '12/3/1996', 1);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10372, 62, 5, '12/4/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10373, 37, 4, '12/5/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10374, 91, 1, '12/5/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10375, 36, 3, '12/6/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10376, 51, 1, '12/9/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10377, 72, 1, '12/9/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10378, 24, 5, '12/10/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10379, 61, 2, '12/11/1996', 1);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10380, 37, 8, '12/12/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10381, 46, 3, '12/12/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10382, 20, 4, '12/13/1996', 1);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10383, 4, 8, '12/16/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10384, 5, 3, '12/16/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10385, 75, 1, '12/17/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10386, 21, 9, '12/18/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10387, 70, 1, '12/18/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10388, 72, 2, '12/19/1996', 1);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10389, 10, 4, '12/20/1996', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10390, 20, 6, '12/23/1996', 1);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10391, 17, 3, '12/23/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10392, 59, 2, '12/24/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10393, 71, 1, '12/25/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10394, 36, 1, '12/25/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10395, 35, 6, '12/26/1996', 1);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10396, 25, 1, '12/27/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10397, 60, 5, '12/27/1996', 1);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10398, 71, 2, '12/30/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10399, 83, 8, '12/31/1996', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10400, 19, 1, '1/1/1997', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10401, 65, 1, '1/1/1997', 1);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10402, 20, 8, '1/2/1997', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10403, 20, 4, '1/3/1997', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10404, 49, 2, '1/3/1997', 1);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10405, 47, 1, '1/6/1997', 1);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10406, 62, 7, '1/7/1997', 1);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10407, 56, 2, '1/7/1997', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10408, 23, 8, '1/8/1997', 1);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10409, 54, 3, '1/9/1997', 1);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10410, 10, 3, '1/10/1997', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10411, 10, 9, '1/10/1997', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10412, 87, 8, '1/13/1997', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10413, 41, 3, '1/14/1997', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10414, 21, 2, '1/14/1997', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10415, 36, 3, '1/15/1997', 1);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10416, 87, 8, '1/16/1997', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10417, 73, 4, '1/16/1997', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10418, 63, 4, '1/17/1997', 1);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10419, 68, 4, '1/20/1997', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10420, 88, 3, '1/21/1997', 1);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10421, 61, 8, '1/21/1997', 1);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10422, 27, 2, '1/22/1997', 1);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10423, 31, 6, '1/23/1997', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10424, 51, 7, '1/23/1997', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10425, 41, 6, '1/24/1997', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10426, 29, 4, '1/27/1997', 1);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10427, 59, 4, '1/27/1997', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10428, 66, 7, '1/28/1997', 1);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10429, 37, 3, '1/29/1997', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10430, 20, 4, '1/30/1997', 1);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10431, 10, 4, '1/30/1997', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10432, 75, 3, '1/31/1997', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10433, 60, 3, '2/3/1997', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10434, 24, 3, '2/3/1997', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10435, 16, 8, '2/4/1997', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10436, 7, 3, '2/5/1997', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10437, 87, 8, '2/5/1997', 1);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10438, 79, 3, '2/6/1997', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10439, 51, 6, '2/7/1997', 3);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10440, 71, 4, '2/10/1997', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10441, 55, 3, '2/10/1997', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10442, 20, 3, '2/11/1997', 2);
INSERT INTO orders(orderID, customerID, employeeID, orderDate, shipperID) VALUES (10443, 66, 8, '2/12/1997', 1);
#delete all
delete from orders;