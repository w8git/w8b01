BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "test" (
	"fst"	INT,
	"timestamp"	TEXT
);
CREATE TABLE IF NOT EXISTS "users" (
	"user_login"	TEXT NOT NULL UNIQUE,
	"user_psw"	TEXT NOT NULL,
	"user_name"	TEXT,
	PRIMARY KEY("user_login")
);
INSERT INTO "users" ("user_login","user_psw","user_name") VALUES ('admin','0ffgh121','администратор');
COMMIT;
