CREATE TABLE bestelling (
	isbn VARCHAR(255) NOT NULL,
	aantal INTEGER NOT NULL,
	FOREIGN KEY (isbn) REFERENCES boek(isbn)
);


CREATE OR REPLACE FUNCTION add_book() RETURNS trigger AS $$
begin
	IF ((SELECT COUNT(*) FROM boek WHERE auteur = NEW.auteur) <= 1) THEN
		INSERT INTO bestelling (isbn, aantal) VALUES (NEW.isbn, 0);
	END IF;
	RETURN NEW;
end
$$ LANGUAGE plpgsql;

CREATE TRIGGER tadd AFTER INSERT on boek	
FOR EACH ROW 
EXECUTE PROCEDURE add_book(OLD);