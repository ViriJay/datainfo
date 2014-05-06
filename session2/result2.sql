INSERT INTO F
	(x, y, violation, motivation)
	VALUES
	("ABC", "EF", 0, "ABC is een super key"),
	("E", "D", 1, "B, C, F zijn niet achterhaalbaar"),
	("D", "A", 1, "A, B, C, E en F zijn niet achterhaalbaar");
	
INSERT INTO F1
	(x, y, violation, motivation)
	VALUES
	("E", "D", 0, "E is een super key van D");
	
INSERT INTO F2
	(x, y, violation, motivation)
	VALUES
	("ABC", "EF", 0, "ABC is een super key"),
	("E", "A", 1, "E is geen super key");