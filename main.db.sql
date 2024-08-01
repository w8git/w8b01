BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "test" (
	"fst"	INT,
	"timestamp"	TEXT
);
CREATE TABLE IF NOT EXISTS "users" ("user_login"	TEXT NOT NULL UNIQUE, "user_psw" TEXT NOT NULL, "user_name" TEXT, PRIMARY KEY("user_login"))
INSERT INTO "users" ("user_login","user_psw","user_name") VALUES ('admin','0ffgh121','администратор');
COMMIT;


CREATE TABLE IF NOT EXISTS "event_log" ("id" TEXT NOT NULL UNIQUE,"event_at" datetime NOT NULL,"event_type" TEXT NOT NULL DEFAULT 'info',"event_group" TEXT NOT NULL DEFAULT 'db',"event_msg" TEXT PRIMARY KEY("id" AUTOINCREMENT))

CREATE TABLE IF NOT EXISTS "event_log" ("id" INTEGER NOT NULL, "event_at" TEXT NOT NULL, "event_group" TEXT NOT NULL, "event_type" TEXT NOT NULL, "event_msg" TEXT, PRIMARY KEY("id" AUTOINCREMENT))

INSERT INTO "event_log" ("event_at", "event_group", "event_type", "event_msg") VALUES(datetime("now"), 'group', 'type', 'msg')

