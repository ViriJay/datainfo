INSERT INTO F
	(x, y, violation, motivation)
	VALUES
	("ABC", "EF", 0, "deze FD is een super key"),
	("E", "D", 1, "B, C, F zijn niet achterhaalbaar"),
	("D", "A", 1, "A, B, C, E en F zijn niet achterhaalbaar");