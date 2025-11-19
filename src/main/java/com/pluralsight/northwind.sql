1. Add a new supplier.
INSERT INTO northwind.suppliers(SupplierID, CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax, HomePage)
VALUES(30, "Prince's Shop", "Prince", "CEO", "123 Street", "Playa Vista", "SoCal", 90094, "USA", "1234567890", NULL, NULL);
30	Prince's Shop	Prince	CEO	123 Street	Playa Vista	SoCal	90094	USA	1234567890	NULL NULL
2. Add a new product provided by that supplier
INSERT INTO northwind.products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued)
VALUES (78, "Prince's Tea", 30, 1, 24, 30, 12, 10, 10, 0);
78	Prince's Tea	30	1	24	30.0000	12	10	10	0
3. List all products and their suppliers.
SELECT s.CompanyName, p.ProductName FROM northwind.products AS p
JOIN northwind.suppliers AS s
ON p.SupplierID = s.SupplierID
GROUP BY s.CompanyName, p.ProductName;
Aux joyeux ecclsiastiques	Cte de Blaye
Aux joyeux ecclsiastiques	Chartreuse verte
Bigfoot Breweries	Sasquatch Ale
Bigfoot Breweries	Steeleye Stout
Bigfoot Breweries	Laughing Lumberjack Lager
Cooperativa de Quesos 'Las Cabras'	Queso Cabrales
Cooperativa de Quesos 'Las Cabras'	Queso Manchego La Pastora
Escargots Nouveaux	Escargots de Bourgogne
Exotic Liquids	Chai
Exotic Liquids	Chang
Exotic Liquids	Aniseed Syrup
Formaggi Fortini s.r.l.	Gorgonzola Telino
Formaggi Fortini s.r.l.	Mascarpone Fabioli
Formaggi Fortini s.r.l.	Mozzarella di Giovanni
Forts d'rables	Sirop d'rable
Forts d'rables	Tarte au sucre
G'day, Mate	Manjimup Dried Apples
G'day, Mate	Filo Mix
G'day, Mate	Perth Pasties
Gai pturage	Raclette Courdavault
Gai pturage	Camembert Pierrot
Grandma Kelly's Homestead	Grandma's Boysenberry Spread
Grandma Kelly's Homestead	Uncle Bob's Organic Dried Pears
Grandma Kelly's Homestead	Northwoods Cranberry Sauce
Heli Swaren GmbH & Co. KG	NuNuCa Nu-Nougat-Creme
Heli Swaren GmbH & Co. KG	Gumbr Gummibrchen
Heli Swaren GmbH & Co. KG	Schoggi Schokolade
Karkki Oy	Maxilaku
Karkki Oy	Valkoinen suklaa
Karkki Oy	Lakkalikri
Leka Trading	Singaporean Hokkien Fried Mee
Leka Trading	Ipoh Coffee
Leka Trading	Gula Malacca
Lyngbysild	Rogede sild
Lyngbysild	Spegesild
Ma Maison	Tourtire
Ma Maison	Pt chinois
Mayumi's	Konbu
Mayumi's	Tofu
Mayumi's	Genen Shouyu
New England Seafood Cannery	Boston Crab Meat
New England Seafood Cannery	Jack's New England Clam Chowder
New Orleans Cajun Delights	Chef Anton's Cajun Seasoning
New Orleans Cajun Delights	Chef Anton's Gumbo Mix
New Orleans Cajun Delights	Louisiana Fiery Hot Pepper Sauce
New Orleans Cajun Delights	Louisiana Hot Spiced Okra
Nord-Ost-Fisch Handelsgesellschaft mbH	Nord-Ost Matjeshering
Norske Meierier	Geitost
Norske Meierier	Gudbrandsdalsost
Norske Meierier	Flotemysost
Pasta Buttini s.r.l.	Gnocchi di nonna Alice
Pasta Buttini s.r.l.	Ravioli Angelo
Pavlova, Ltd.	Pavlova
Pavlova, Ltd.	Alice Mutton
Pavlova, Ltd.	Carnarvon Tigers
Pavlova, Ltd.	Vegie-spread
Pavlova, Ltd.	Outback Lager
PB Knckebrd AB	Gustaf's Knckebrd
PB Knckebrd AB	Tunnbrd
Plutzer Lebensmittelgromrkte AG	Rssle Sauerkraut
Plutzer Lebensmittelgromrkte AG	Thringer Rostbratwurst
Plutzer Lebensmittelgromrkte AG	Wimmers gute Semmelkndel
Plutzer Lebensmittelgromrkte AG	Rhnbru Klosterbier
Plutzer Lebensmittelgromrkte AG	Original Frankfurter grne Soe
Prince's Shop	Prince's Tea
Refrescos Americanas LTDA	Guaran Fantstica
Specialty Biscuits, Ltd.	Teatime Chocolate Biscuits
Specialty Biscuits, Ltd.	Sir Rodney's Marmalade
Specialty Biscuits, Ltd.	Sir Rodney's Scones
Specialty Biscuits, Ltd.	Scottish Longbreads
Svensk Sjfda AB	Inlagd Sill
Svensk Sjfda AB	Gravad lax
Svensk Sjfda AB	Rd Kaviar
Tokyo Traders	Mishi Kobe Niku
Tokyo Traders	Ikura
Tokyo Traders	Longlife Tofu
Zaanse Snoepfabriek	Zaanse koeken
Zaanse Snoepfabriek	Chocolade
4. Raise the price of your new product by 15%.
UPDATE northwind.products
SET UnitPrice = 34.5
WHERE productID = 78;
78	Prince's Tea	30	1	24	34.5000	12	10	10	0
5. List the products and prices of all products from that supplier.
SELECT * FROM northwind.products
WHERE SupplierID = 30;
78	Prince's Tea	30	1	24	34.5000	12	10	10	0
6. Delete the new product.
DELETE FROM northwind.products
WHERE productID = 78;
7. Delete the new supplier.
DELETE FROM northwind.suppliers
WHERE SupplierID = 30;
8. List all products.
SELECT * FROM northwind.products;
1	Chai	1	1	10 boxes x 20 bags	18.0000	39	0	10	0
2	Chang	1	1	24 - 12 oz bottles	19.0000	17	40	25	0
3	Aniseed Syrup	1	2	12 - 550 ml bottles	10.0000	13	70	25	0
4	Chef Anton's Cajun Seasoning	2	2	48 - 6 oz jars	22.0000	53	0	0	0
5	Chef Anton's Gumbo Mix	2	2	36 boxes	21.3500	0	0	0	1
6	Grandma's Boysenberry Spread	3	2	12 - 8 oz jars	25.0000	120	0	25	0
7	Uncle Bob's Organic Dried Pears	3	7	12 - 1 lb pkgs.	30.0000	15	0	10	0
8	Northwoods Cranberry Sauce	3	2	12 - 12 oz jars	40.0000	6	0	0	0
9	Mishi Kobe Niku	4	6	18 - 500 g pkgs.	97.0000	29	0	0	1
10	Ikura	4	8	12 - 200 ml jars	31.0000	31	0	0	0
11	Queso Cabrales	5	4	1 kg pkg.	21.0000	22	30	30	0
12	Queso Manchego La Pastora	5	4	10 - 500 g pkgs.	38.0000	86	0	0	0
13	Konbu	6	8	2 kg box	6.0000	24	0	5	0
14	Tofu	6	7	40 - 100 g pkgs.	23.2500	35	0	0	0
15	Genen Shouyu	6	2	24 - 250 ml bottles	15.5000	39	0	5	0
16	Pavlova	7	3	32 - 500 g boxes	17.4500	29	0	10	0
17	Alice Mutton	7	6	20 - 1 kg tins	39.0000	0	0	0	1
18	Carnarvon Tigers	7	8	16 kg pkg.	62.5000	42	0	0	0
19	Teatime Chocolate Biscuits	8	3	10 boxes x 12 pieces	9.2000	25	0	5	0
20	Sir Rodney's Marmalade	8	3	30 gift boxes	81.0000	40	0	0	0
21	Sir Rodney's Scones	8	3	24 pkgs. x 4 pieces	10.0000	3	40	5	0
22	Gustaf's Knckebrd	9	5	24 - 500 g pkgs.	21.0000	104	0	25	0
23	Tunnbrd	9	5	12 - 250 g pkgs.	9.0000	61	0	25	0
24	Guaran Fantstica	10	1	12 - 355 ml cans	4.5000	20	0	0	1
25	NuNuCa Nu-Nougat-Creme	11	3	20 - 450 g glasses	14.0000	76	0	30	0
26	Gumbr Gummibrchen	11	3	100 - 250 g bags	31.2300	15	0	0	0
27	Schoggi Schokolade	11	3	100 - 100 g pieces	43.9000	49	0	30	0
28	Rssle Sauerkraut	12	7	25 - 825 g cans	45.6000	26	0	0	1
29	Thringer Rostbratwurst	12	6	50 bags x 30 sausgs.	123.7900	0	0	0	1
30	Nord-Ost Matjeshering	13	8	10 - 200 g glasses	34.5000	10	0	15	0
31	Gorgonzola Telino	14	4	12 - 100 g pkgs	12.5000	0	70	20	0
32	Mascarpone Fabioli	14	4	24 - 200 g pkgs.	32.0000	9	40	25	0
33	Geitost	15	4	500 g	2.5000	112	0	20	0
34	Sasquatch Ale	16	1	24 - 12 oz bottles	14.0000	111	0	15	0
35	Steeleye Stout	16	1	24 - 12 oz bottles	18.0000	20	0	15	0
36	Inlagd Sill	17	8	24 - 250 g  jars	19.0000	112	0	20	0
37	Gravad lax	17	8	12 - 500 g pkgs.	26.0000	11	50	25	0
38	Cte de Blaye	18	1	12 - 75 cl bottles	263.5000	17	0	15	0
39	Chartreuse verte	18	1	750 cc per bottle	18.0000	69	0	5	0
40	Boston Crab Meat	19	8	24 - 4 oz tins	18.4000	123	0	30	0
41	Jack's New England Clam Chowder	19	8	12 - 12 oz cans	9.6500	85	0	10	0
42	Singaporean Hokkien Fried Mee	20	5	32 - 1 kg pkgs.	14.0000	26	0	0	1
43	Ipoh Coffee	20	1	16 - 500 g tins	46.0000	17	10	25	0
44	Gula Malacca	20	2	20 - 2 kg bags	19.4500	27	0	15	0
45	Rogede sild	21	8	1k pkg.	9.5000	5	70	15	0
46	Spegesild	21	8	4 - 450 g glasses	12.0000	95	0	0	0
47	Zaanse koeken	22	3	10 - 4 oz boxes	9.5000	36	0	0	0
48	Chocolade	22	3	10 pkgs.	12.7500	15	70	25	0
49	Maxilaku	23	3	24 - 50 g pkgs.	20.0000	10	60	15	0
50	Valkoinen suklaa	23	3	12 - 100 g bars	16.2500	65	0	30	0
51	Manjimup Dried Apples	24	7	50 - 300 g pkgs.	53.0000	20	0	10	0
52	Filo Mix	24	5	16 - 2 kg boxes	7.0000	38	0	25	0
53	Perth Pasties	24	6	48 pieces	32.8000	0	0	0	1
54	Tourtire	25	6	16 pies	7.4500	21	0	10	0
55	Pt chinois	25	6	24 boxes x 2 pies	24.0000	115	0	20	0
56	Gnocchi di nonna Alice	26	5	24 - 250 g pkgs.	38.0000	21	10	30	0
57	Ravioli Angelo	26	5	24 - 250 g pkgs.	19.5000	36	0	20	0
58	Escargots de Bourgogne	27	8	24 pieces	13.2500	62	0	20	0
59	Raclette Courdavault	28	4	5 kg pkg.	55.0000	79	0	0	0
60	Camembert Pierrot	28	4	15 - 300 g rounds	34.0000	19	0	0	0
61	Sirop d'rable	29	2	24 - 500 ml bottles	28.5000	113	0	25	0
62	Tarte au sucre	29	3	48 pies	49.3000	17	0	0	0
63	Vegie-spread	7	2	15 - 625 g jars	43.9000	24	0	5	0
64	Wimmers gute Semmelkndel	12	5	20 bags x 4 pieces	33.2500	22	80	30	0
65	Louisiana Fiery Hot Pepper Sauce	2	2	32 - 8 oz bottles	21.0500	76	0	0	0
66	Louisiana Hot Spiced Okra	2	2	24 - 8 oz jars	17.0000	4	100	20	0
67	Laughing Lumberjack Lager	16	1	24 - 12 oz bottles	14.0000	52	0	10	0
68	Scottish Longbreads	8	3	10 boxes x 8 pieces	12.5000	6	10	15	0
69	Gudbrandsdalsost	15	4	10 kg pkg.	36.0000	26	0	15	0
70	Outback Lager	7	1	24 - 355 ml bottles	15.0000	15	10	30	0
71	Flotemysost	15	4	10 - 500 g pkgs.	21.5000	26	0	0	0
72	Mozzarella di Giovanni	14	4	24 - 200 g pkgs.	34.8000	14	0	0	0
73	Rd Kaviar	17	8	24 - 150 g jars	15.0000	101	0	5	0
74	Longlife Tofu	4	7	5 kg pkg.	10.0000	4	20	5	0
75	Rhnbru Klosterbier	12	1	24 - 0.5 l bottles	7.7500	125	0	25	0
76	Lakkalikri	23	1	500 ml	18.0000	57	0	20	0
77	Original Frankfurter grne Soe	12	2	12 boxes	13.0000	32	0	15	0
9. List all suppliers.
SELECT * FROM northwind.suppliers;
1	Exotic Liquids	Charlotte Cooper	Purchasing Manager	49 Gilbert St.
2	New Orleans Cajun Delights	Shelley Burke	Order Administrator	P.O. Box 78934
3	Grandma Kelly's Homestead	Regina Murphy	Sales Representative	707 Oxford Rd.
4	Tokyo Traders	Yoshi Nagase	Marketing Manager	9-8 Sekimai
 Musashino-shi
5	Cooperativa de Quesos 'Las Cabras'	Antonio del Valle Saavedra 	Export Administrator	Calle del Rosal 4
6	Mayumi's	Mayumi Ohno	Marketing Representative	92 Setsuko
 Chuo-ku
7	Pavlova, Ltd.	Ian Devling	Marketing Manager	74 Rose St.
 Moonie Ponds
8	Specialty Biscuits, Ltd.	Peter Wilson	Sales Representative	29 King's Way
9	PB Knckebrd AB	Lars Peterson	Sales Agent	Kaloadagatan 13
10	Refrescos Americanas LTDA	Carlos Diaz	Marketing Manager	Av. das Americanas 12.890
11	Heli Swaren GmbH & Co. KG	Petra Winkler	Sales Manager	Tiergartenstrae 5
12	Plutzer Lebensmittelgromrkte AG	Martin Bein	International Marketing Mgr.	Bogenallee 51
13	Nord-Ost-Fisch Handelsgesellschaft mbH	Sven Petersen	Coordinator Foreign Markets	Frahmredder 112a
14	Formaggi Fortini s.r.l.	Elio Rossi	Sales Representative	Viale Dante, 75
15	Norske Meierier	Beate Vileid	Marketing Manager	Hatlevegen 5
16	Bigfoot Breweries	Cheryl Saylor	Regional Account Rep.	3400 - 8th Avenue
 Suite 210
17	Svensk Sjfda AB	Michael Bjrn	Sales Representative	Brovallavgen 231
18	Aux joyeux ecclsiastiques	Guylne Nodier	Sales Manager	203, Rue des Francs-Bourgeois
19	New England Seafood Cannery	Robb Merchant	Wholesale Account Agent	Order Processing Dept.
 2100 Paul Revere Blvd.
20	Leka Trading	Chandra Leka	Owner	471 Serangoon Loop, Suite #402
21	Lyngbysild	Niels Petersen	Sales Manager	Lyngbysild
 Fiskebakken 10
22	Zaanse Snoepfabriek	Dirk Luchte	Accounting Manager	Verkoop
 Rijnweg 22
23	Karkki Oy	Anne Heikkonen	Product Manager	Valtakatu 12
24	G'day, Mate	Wendy Mackenzie	Sales Representative	170 Prince Edward Parade
 Hunter's Hill
25	Ma Maison	Jean-Guy Lauzon	Marketing Manager	2960 Rue St. Laurent
26	Pasta Buttini s.r.l.	Giovanni Giudici	Order Administrator	Via dei Gelsomini, 153
27	Escargots Nouveaux	Marie Delamare	Sales Manager	22, rue H. Voiron
28	Gai pturage	Eliane Noz	Sales Representative	Bat. B
 3, rue des Alpes
29	Forts d'rables	Chantal Goulet	Accounting Manager	148 rue Chasseur