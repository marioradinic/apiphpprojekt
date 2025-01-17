drop table order_items;
drop table orders;
drop table products;
drop table news;
drop table users;
drop table countries;

CREATE TABLE countries (
  id int NOT NULL AUTO_INCREMENT,
  code varchar(2) NOT NULL,
  name varchar(100) NOT NULL,
  
  PRIMARY KEY (id)
);

INSERT INTO countries (code, name) VALUES
('AF','Afghanistan'),
('AL','Albania'),
('DZ','Algeria'),
('DS','American Samoa'),
('AD','Andorra'),
('AO','Angola'),
('AI','Anguilla'),
('AQ','Antarctica'),
('AG','Antigua and Barbuda'),
('AR','Argentina'),
('AM','Armenia'),
('AW','Aruba'),
('AU','Australia'),
('AT','Austria'),
('AZ','Azerbaijan'),
('BS','Bahamas'),
('BH','Bahrain'),
('BD','Bangladesh'),
('BB','Barbados'),
('BY','Belarus'),
('BE','Belgium'),
('BZ','Belize'),
('BJ','Benin'),
('BM','Bermuda'),
('BT','Bhutan'),
('BO','Bolivia'),
('BA','Bosnia and Herzegovina'),
('BW','Botswana'),
('BV','Bouvet Island'),
('BR','Brazil'),
('IO','British Indian Ocean Territory'),
('BN','Brunei Darussalam'),
('BG','Bulgaria'),
('BF','Burkina Faso'),
('BI','Burundi'),
('KH','Cambodia'),
('CM','Cameroon'),
('CA','Canada'),
('CV','Cape Verde'),
('KY','Cayman Islands'),
('CF','Central African Republic'),
('TD','Chad'),
('CL','Chile'),
('CN','China'),
('CX','Christmas Island'),
('CC','Cocos (Keeling) Islands'),
('CO','Colombia'),
('KM','Comoros'),
('CG','Congo'),
('CK','Cook Islands'),
('CR','Costa Rica'),
('HR','Croatia (Hrvatska)'),
('CU','Cuba'),
('CY','Cyprus'),
('CZ','Czech Republic'),
('DK','Denmark'),
('DJ','Djibouti'),
('DM','Dominica'),
('DO','Dominican Republic'),
('TP','East Timor'),
('EC','Ecuador'),
('EG','Egypt'),
('SV','El Salvador'),
('GQ','Equatorial Guinea'),
('ER','Eritrea'),
('EE','Estonia'),
('ET','Ethiopia'),
('FK','Falkland Islands (Malvinas)'),
('FO','Faroe Islands'),
('FJ','Fiji'),
('FI','Finland'),
('FR','France'),
('FX','France, Metropolitan'),
('GF','French Guiana'),
('PF','French Polynesia'),
('TF','French Southern Territories'),
('GA','Gabon'),
('GM','Gambia'),
('GE','Georgia'),
('DE','Germany'),
('GH','Ghana'),
('GI','Gibraltar'),
('GK','Guernsey'),
('GR','Greece'),
('GL','Greenland'),
('GD','Grenada'),
('GP','Guadeloupe'),
('GU','Guam'),
('GT','Guatemala'),
('GN','Guinea'),
('GW','Guinea-Bissau'),
('GY','Guyana'),
('HT','Haiti'),
('HM','Heard and Mc Donald Islands'),
('HN','Honduras'),
('HK','Hong Kong'),
('HU','Hungary'),
('IS','Iceland'),
('IN','India'),
('IM','Isle of Man'),
('ID','Indonesia'),
('IR','Iran (Islamic Republic of)'),
('IQ','Iraq'),
('IE','Ireland'),
('IL','Israel'),
('IT','Italy'),
('CI','Ivory Coast'),
('JE','Jersey'),
('JM','Jamaica'),
('JP','Japan'),
('JO','Jordan'),
('KZ','Kazakhstan'),
('KE','Kenya'),
('KI','Kiribati'),
('KP','Korea, Democratic Peoples Republic of'),
('KR','Korea, Republic of'),
('XK','Kosovo'),
('KW','Kuwait'),
('KG','Kyrgyzstan'),
('LA','Lao Peoples Democratic Republic'),
('LV','Latvia'),
('LB','Lebanon'),
('LS','Lesotho'),
('LR','Liberia'),
('LY','Libyan Arab Jamahiriya'),
('LI','Liechtenstein'),
('LT','Lithuania'),
('LU','Luxembourg'),
('MO','Macau'),
('MK','Macedonia'),
('MG','Madagascar'),
('MW','Malawi'),
('MY','Malaysia'),
('MV','Maldives'),
('ML','Mali'),
('MT','Malta'),
('MH','Marshall Islands'),
('MQ','Martinique'),
('MR','Mauritania'),
('MU','Mauritius'),
('TY','Mayotte'),
('MX','Mexico'),
('FM','Micronesia, Federated States of'),
('MD','Moldova, Republic of'),
('MC','Monaco'),
('MN','Mongolia'),
('ME','Montenegro'),
('MS','Montserrat'),
('MA','Morocco'),
('MZ','Mozambique'),
('MM','Myanmar'),
('NA','Namibia'),
('NR','Nauru'),
('NP','Nepal'),
('NL','Netherlands'),
('AN','Netherlands Antilles'),
('NC','New Caledonia'),
('NZ','New Zealand'),
('NI','Nicaragua'),
('NE','Niger'),
('NG','Nigeria'),
('NU','Niue'),
('NF','Norfolk Island'),
('MP','Northern Mariana Islands'),
('NO','Norway'),
('OM','Oman'),
('PK','Pakistan'),
('PW','Palau'),
('PS','Palestine'),
('PA','Panama'),
('PG','Papua New Guinea'),
('PY','Paraguay'),
('PE','Peru'),
('PH','Philippines'),
('PN','Pitcairn'),
('PL','Poland'),
('PT','Portugal'),
('PR','Puerto Rico'),
('QA','Qatar'),
('RE','Reunion'),
('RO','Romania'),
('RU','Russian Federation'),
('RW','Rwanda'),
('KN','Saint Kitts and Nevis'),
('LC','Saint Lucia'),
('VC','Saint Vincent and the Grenadines'),
('WS','Samoa'),
('SM','San Marino'),
('ST','Sao Tome and Principe'),
('SA','Saudi Arabia'),
('SN','Senegal'),
('RS','Serbia'),
('SC','Seychelles'),
('SL','Sierra Leone'),
('SG','Singapore'),
('SK','Slovakia'),
('SI','Slovenia'),
('SB','Solomon Islands'),
('SO','Somalia'),
('ZA','South Africa'),
('GS','South Georgia South Sandwich Islands'),
('ES','Spain'),
('LK','Sri Lanka'),
('SH','St. Helena'),
('PM','St. Pierre and Miquelon'),
('SD','Sudan'),
('SR','Suriname'),
('SJ','Svalbard and Jan Mayen Islands'),
('SZ','Swaziland'),
('SE','Sweden'),
('CH','Switzerland'),
('SY','Syrian Arab Republic'),
('TW','Taiwan'),
('TJ','Tajikistan'),
('TZ','Tanzania, United Republic of'),
('TH','Thailand'),
('TG','Togo'),
('TK','Tokelau'),
('TO','Tonga'),
('TT','Trinidad and Tobago'),
('TN','Tunisia'),
('TR','Turkey'),
('TM','Turkmenistan'),
('TC','Turks and Caicos Islands'),
('TV','Tuvalu'),
('UG','Uganda'),
('UA','Ukraine'),
('AE','United Arab Emirates'),
('GB','United Kingdom'),
('US','United States'),
('UM','United States minor outlying islands'),
('UY','Uruguay'),
('UZ','Uzbekistan'),
('VU','Vanuatu'),
('VA','Vatican City State'),
('VE','Venezuela'),
('VN','Vietnam'),
('VG','Virgin Islands (British)'),
('VI','Virgin Islands (U.S.)'),
('WF','Wallis and Futuna Islands'),
('EH','Western Sahara'),
('YE','Yemen'),
('ZR','Zaire'),
('ZM','Zambia'),
('ZW','Zimbabwe');

CREATE TABLE users (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(50) NOT NULL,
  lastname varchar(50) NOT NULL,
  email varchar(50) NOT NULL,
  username varchar(100) NOT NULL,
  password varchar(100) NOT NULL,
  country_id int,
  isactive enum('Y','N') NOT NULL DEFAULT 'Y',
  isadmin enum('Y','N') NOT NULL DEFAULT 'N',
  issuperadmin enum('Y','N') NOT NULL DEFAULT 'N',
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  
  FOREIGN KEY (country_id)
  REFERENCES countries(id)
  ON DELETE SET NULL,
  
  PRIMARY KEY (id),
  UNIQUE KEY username_key(username)
);

INSERT INTO users(name, lastname, email, username, password, country_id, isactive, isadmin, issuperadmin, created_at, updated_at) 
VALUES 
('admin', 'admin', 'admin@iskon.hr', 'admin', 'admin123', 52, 'Y', 'Y', 'Y', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('pero', 'peric', 'test@tcom.hr','pero', 'pero123', 106, 'Y', 'N', 'N', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

CREATE TABLE news (
  id int NOT NULL AUTO_INCREMENT,
  title varchar(255) NOT NULL,
  summary varchar(1000) NOT NULL,
  description text NOT NULL,
  img varchar(255),
  active enum('Y','N') NOT NULL,
  creator_id int,
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  
  FOREIGN KEY (creator_id)
  REFERENCES users(id)
  ON DELETE SET NULL,
  
  PRIMARY KEY (id)
);

INSERT INTO news (title, summary, description, img, active, creator_id, created_at, updated_at) VALUES
('Najprodavanija autobiografija u Hrvatskoj sada dolazi i uz inspirativan dnevnik', 
'AUTOBIOGRAFIJA Zelena svjetla, popularnog glumca i producenta Matthewa McConaugheyja, objavljena u prijevodu Vedrana Pavlića, ne silazi s vrha top-ljestvice najprodavanijih naslova u Hrvatskoj.', 
'Autobiografski zapisi slavnoga glumca inspirirali su milijune čitatelja nepokolebljivom iskrenošću, nekonvencionalnom mudrošću i lekcijama o životu punom zadovoljstva, a njegove jednostavne upute za pisanje dnevnika omogućit će dublji uvid u vlastiti život svima koji se u tome okušaju. Nadovezujući se na Zelena svjetla, Matthew McConaughey oblikovao je dnevnik pomoću kojega čitatelji mogu sami pratiti vlastita crvena, žuta i zelena svjetla. Dnevnik daje dragocjen uvid u odluke koje donosimo te nudi savjete kako prevladati prepreke i ostvariti najbolju verziju sebe, ističe urednica knjige Emica Calogjera Rogić.',  
'1.jpg', 'Y', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Ovaj roman već godinu i pol vlada top listom najčitanijih. Sada je preveden i kod nas', 
'ROMAN Greta: Godine ljubavi, godine sjećanja autorice Susanne Abel je dirljiva priča o čijoj popularnosti u Njemačkoj svjedoči činjenica da već godinu i pol suvereno vlada Spiegelovom top listom, a hrvatski čitatelji sada je imaju priliku pročitati u izvrsnom prijevodu Sanje Gjenero. ', 
'Abel kroz priču o nemogućoj ljubavi jednog afroameričkog vojnika i Njemice po svršetku 2. svjetskoga rata u Greti progovara o važnoj temi: rasizmu prisutnom na obje prethodno zaraćene strane, djeci mješancima proizašlima iz takvih nepoželjnih veza i diskriminaciji kojima su bila izložena sa svojim roditeljima. U središtu priče poznati je kelnski televizijski voditelj Tom Monderath koji se brine za svoju 84-godišnju majku Gretu koja u posljednje vrijeme sve više zaboravlja. No Greta će se u svojoj zaboravljivosti prvi put otvoriti i ispričati mu djeliće svoje prošlosti o kojima nikada prije nije čuo - o djetinjstvu u Istočnoj Pruskoj u vrijeme nacizma, o bijegu pred Crvenom armijom i životu u Heidelbergu gdje je napokon pronašla novi dom, o siromaštvu u poslijeratnoj Njemačkoj.',  
'2.jpg', 'Y', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Zima lagano stiže, a s njom i neke odlične knjige', 
'NE TREBA posebno isticati da je zima stigla. Dovoljno je izaći iz toplog doma bez kape i debljeg kaputa – tu nitko neće moći poreći da smo ušli u najhladniji dio godine. Uskoro će se upaliti i lampice te će s blagdanskom atmosferom krenuti i vrijeme darivanja.', 
'Zima u nama – Katherine May. U svojoj dojmljivoj osobnoj ispovijesti, prožetoj pričama iz književnosti, mitologije i svijeta prirode, britanska spisateljica Katherine May poziva nas da promijenimo način na koji se odnosimo prema teškim razdobljima u svome životu, dijeleći s nama smjernice za preobrazbu takvih životnih razdoblja, onih zima u nama što prethode pojavi novoga godišnjeg doba, novog života.',  
'3.jpg', 'Y', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

CREATE TABLE news_comments (
  id int NOT NULL AUTO_INCREMENT,
  news_id int,
  note varchar(1000) NOT NULL,
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

  FOREIGN KEY (news_id)
  REFERENCES news(id)
  ON DELETE RESTRICT,
  
  PRIMARY KEY (id)
);

CREATE TABLE products (
  id int NOT NULL AUTO_INCREMENT,
  title varchar(255) NOT NULL,
  price numeric(10,2) not null,
  description text NOT NULL,
  img varchar(255),
  active enum('Y','N') NOT NULL,
  creator_id int,
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  
  FOREIGN KEY (creator_id)
  REFERENCES users(id)
  ON DELETE SET NULL,
  
  PRIMARY KEY (id)
);

INSERT INTO products (title, price, description, img, active, creator_id, created_at, updated_at) VALUES
('RUKE I DRUGE NOVELE, Ranko Marinković', 
159.00, 
'U knjizi su objavljene novele: Samotni život tvoj, Suknja, Prah, Anđeo, Koštane zvijezde, Benito Floda von Reltih, Ruke i Zagrljaj . S obzirom na sadržaj, pomni i duhovni prikazi tipičnih koralnih ili komornih prizora iz života, podnebljem i mentalitetom određenih likova, vezanih za dalmatinsko i mediteransko, ustupaju mjesto marginalnom, iznimnomu, promatranomu u izmjenjenoj optici. Takvim se sadržajem već nagoviještena tema suparništva zaoštrava kao problem površinske razlike i potajnogidentiteta ne samo među likovima nego i između glasa koji pripovijeda i pripovijednog lika.',  
'1.jpg', 'Y', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('LJUDSKA SUDBINA, A. Malraux', 
90.00, 
'André Malraux (Pariz, 3. studenog 1901. – Créteil, 23. studenog 1976.), francuski pisac, pustolov i državnik. Među književnicima 20. stoljeća Malraux spada u one koji su često čuveniji po svom životu nego djelima. Iako među drugim francuskim književnicima 20. stoljeća ima intelektualno ili filozofsko-poetički pronicljivijih, a i stilski izazovnijih, niti jedan se širinom interesa i svojevrsnim protejskim zahvatom ne približava Malrauxu, „najfascinantnijoj pojavi suvremene književnosti“ prema riječima Jean-Luca Godarda. Ljudska sudbina treći je Malrauxov roman i vjerojatno vrhunac njegova romanesknog opusa, djelo u kojem se, i dalje vjerujući u univerzalne, premda problematične vrednote, usmjerava na skupnog problematičnog protagonista. Unutar šireg tematskog okvira revolucionarnih zbivanja u Kini potkraj 20. stoljeća, konkretnije revolucionarne pobune u Šangaju 1927., roman tematizira rascjep između skupine revolucionara koji tu pobunu planiraju i vode i vodstva Komunističke stranke i Komunističke internacionale, suprotstavljenih pobuni usmjerenoj protiv kuomintanških nacionalista pod vodstvom Chang Kai-sheka, odnosno na analoškoj simboličkoj razini sukob trockističkog naglaska na revolucionarnoj i trenutačnoj akciji i staljinističkog naglaska na disciplini.',  
'2.jpg', 'Y', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('JERUZALEM, M. Tavares', 
80.00, 
'Turobna, crnohumorna panorama ljudskih duša početkom 21. stoljeća, svijeta kojim vladaju strahovi, nasilje, bol i neizvjesnost. Roman koji je mladog Portugalca već svrstao među klasike. Gonçalo Tavares jedan je od najperspektivnijih Knjige za tinejdžere i mladeh portugalskih pisaca, koji je za svoj književni rad dobio najvrjednije nagrade u Portugalu i Brazilu.',  
'3.jpg', 'Y', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('ABADON, UPROPASTITELJ, Sabato', 
119.99, 
'Roman Abadon, Upropastitelj argentinskog književnika Ernesta Sabata, rođenog 1911, posljednje je njegovo djelo iz trilogije koja još obuhvaća romane Tunel i O junacima i grobovima, a smatra se vrhuncem njegova proznog stvaralaštva i jednim od najvećih hispanoameričkih romana uopće. U Francuskoj je 1974. dobio nagradu kao najbolja strana knjiga, a iste godine dodijeljena mu je i američka književna nagrada Gabriela Mistral. Najznačajniju španjolsku književnu nagradu Premio Cervantes dobio je 1984. godine.',  
'4.jpg', 'Y', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

CREATE TABLE product_scores (
  id int NOT NULL AUTO_INCREMENT,
  product_id int,
  score int NOT NULL,
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

  FOREIGN KEY (product_id)
  REFERENCES products(id)
  ON DELETE RESTRICT,
  
  PRIMARY KEY (id)
);

CREATE TABLE orders (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(50) NOT NULL,
  lastname varchar(50) NOT NULL,
  email varchar(50) NOT NULL,
  note text,
  user_id int null,
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

  FOREIGN KEY (user_id)
  REFERENCES users(id)
  ON DELETE SET NULL,
  
  PRIMARY KEY (id)
);

CREATE TABLE order_items (
  id int NOT NULL AUTO_INCREMENT,
  order_id int,
  product_id int,
  quantity int NOT NULL,
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

  FOREIGN KEY (order_id)
  REFERENCES orders(id)
  ON DELETE CASCADE,
  
  FOREIGN KEY (product_id)
  REFERENCES products(id)
  ON DELETE RESTRICT,
  
  PRIMARY KEY (id)
);