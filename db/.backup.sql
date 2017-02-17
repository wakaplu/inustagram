PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE "schema_migrations" ("version" varchar NOT NULL);
INSERT INTO "schema_migrations" VALUES('20160801000010');
INSERT INTO "schema_migrations" VALUES('20160801000020');
INSERT INTO "schema_migrations" VALUES('20160801000030');
INSERT INTO "schema_migrations" VALUES('20160801000040');
INSERT INTO "schema_migrations" VALUES('20160801000050');
INSERT INTO "schema_migrations" VALUES('20160801000100');
CREATE TABLE "notes" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar, "content" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "user_id" integer);
INSERT INTO "notes" VALUES(1,'alldaylongのlady','はまった','2017-01-31 09:35:55.533833','2017-01-31 09:35:55.533833',1);
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "email" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "image" varchar, "encrypted_password" varchar DEFAULT '' NOT NULL);
INSERT INTO "users" VALUES(1,'waka','kakutawaka@gmail.com','2017-01-31 09:34:38.438911','2017-01-31 09:34:38.438911',NULL,'$2a$10$sINTZuiMGVqEDBlQkpNu3Ow8kLP0ZcXJW7mH8K/8ocdIsX9ncsKtO');
INSERT INTO "users" VALUES(2,'kaku','wakapluu@gmail.com','2017-01-31 09:44:51.393735','2017-01-31 09:44:51.393735',NULL,'$2a$10$8WBSpR1hw3FhhpCARbxPuux413ndHBBclNEd2LpRcsMTS82Bgaj9G');
CREATE TABLE "likes" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "user_id" integer, "note_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "likes" VALUES(2,1,1,'2017-01-31 09:43:54.410153','2017-01-31 09:43:54.410153');
INSERT INTO "likes" VALUES(4,2,1,'2017-01-31 09:45:19.908285','2017-01-31 09:45:19.908285');
DELETE FROM sqlite_sequence;
INSERT INTO "sqlite_sequence" VALUES('users',2);
INSERT INTO "sqlite_sequence" VALUES('notes',1);
INSERT INTO "sqlite_sequence" VALUES('likes',4);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
COMMIT;
