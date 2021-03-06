CREATE TABLE Boek(
	isbn VARCHAR(20) NOT NULL,
	titel VARCHAR(50) NOT NULL,
	auteur VARCHAR(30) NOT NULL,
	PRIMARY KEY (isbn)
);

CREATE TABLE Exemplaar(
	isbn VARCHAR(20)  NOT NULL,
	volgnummer INT NOT NULL,
	gewicht INT NOT NULL,
	kast VARCHAR(10) NOT NULL,
	FOREIGN KEY (isbn) REFERENCES Boek(isbn) ON UPDATE CASCADE ON DELETE CASCADE
);