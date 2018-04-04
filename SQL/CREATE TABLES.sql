
CREATE TABLE Users ( Username VARCHAR(30), 
                    Password CHAR(65) NOT NULL,   
                    email   VARCHAR(60),
                    Phone_Number VARCHAR(20),
                    City VARCHAR(50),
                    Country VARCHAR(50),
                    Registration_Date DATETIME NOT NULL,
                    PRIMARY KEY users_usrnm_pk (Username));



CREATE TABLE Collections ( Collection_ID INT UNSIGNED AUTO_INCREMENT ,
                          Name VARCHAR(100) NOT NULL,
                          Category ENUM('Brandname Products','Architectural','Art','Books,Magazines & Periodicals', 
                                        'Cards', 'Ephemera','Clothing,Fabric & Textiles','Coins,Currency & Stamps',
                                        'Film & Television','Glass & Pottery','Household','Kitchen collectibles',
                                        'Memorabilia', 'Music', 'Nature & Animals', 'Sports', 'Technology', 'Historical',
                                        'Souvenirs', 'Toys,Games & Dolls', 'Other') NOT NULL,
                          Owner VARCHAR(30),
                          Creation_Date DATETIME NOT NULL,
                          FOREIGN KEY collections_ownr_fk (Owner) REFERENCES Users(Username) ON DELETE SET NULL,        
                          PRIMARY KEY collections_colID_pk (Collection_ID));



CREATE TABLE Collectors ( Username VARCHAR(30),
	  					  Collection_ID INT UNSIGNED,
	  					  Participation_Date DATETIME NOT NULL,
	  					  FOREIGN KEY collectors_usrnm_fk (Username) REFERENCES Users(Username) ON DELETE CASCADE ,               					 
	  					  FOREIGN KEY collectors_colID_fk (Collection_ID) REFERENCES Collections(Collection_ID) ON DELETE CASCADE,  	 
	  					  PRIMARY KEY collectors_usrnm_colID_pk (Username,Collection_ID));



CREATE TABLE Liked_Collections ( Username VARCHAR(30),
								Collection_ID INT UNSIGNED,
								FOREIGN KEY liked_usrnm_fk (Username) REFERENCES Users(Username) ON DELETE CASCADE ,
								FOREIGN KEY liked_colID_fk (Collection_ID) REFERENCES Collections(Collection_ID) ON DELETE CASCADE,
								PRIMARY KEY liked_usrnm_colID_pk (Username,Collection_ID));



CREATE TABLE Collection_Comments ( Comment_ID  INT AUTO_INCREMENT, 
								  Username VARCHAR(30) NOT NULL,
								  Collection_ID INT UNSIGNED NOT NULL,
								  Comment TEXT NOT NULL,
								  Comment_Date DATETIME NOT NULL,
								  FOREIGN KEY col_comm_usrnm_fk (Username) REFERENCES Users(Username) ON DELETE CASCADE,
								  FOREIGN KEY col_comm_colID_fk (Collection_ID) REFERENCES Collections(Collection_ID) ON DELETE CASCADE,
								  PRIMARY KEY col_comm_comID_pk (Comment_ID));



CREATE TABLE Collection_Items ( Collection_ID INT UNSIGNED,
								Item VARCHAR(255),
								FOREIGN KEY col_itms_colID_fk (Collection_ID) REFERENCES Collections(Collection_ID) ON DELETE CASCADE,
								PRIMARY KEY col_itms_itm_colID_pk (Collection_ID,Item));



CREATE TABLE Items_Owned ( Username VARCHAR(30),
						  Collection_ID INT UNSIGNED,
						  Item VARCHAR(255),
						  FOREIGN KEY itms_ownd_usrnm_fk (Username) REFERENCES Users(Username) ON DELETE CASCADE,
						  FOREIGN KEY itms_ownd_colID_fk (Collection_ID) REFERENCES Collections(Collection_ID) ON DELETE CASCADE,
						  PRIMARY KEY itms_ownd_usrnm_colID_itm_pk (Username,Collection_ID,Item));















