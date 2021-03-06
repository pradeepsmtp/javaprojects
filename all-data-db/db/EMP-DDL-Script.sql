--<ScriptOptions statementTerminator=";"/>

ALTER TABLE "APP"."EMP" DROP CONSTRAINT "SQL160617141927161";

ALTER TABLE "APP"."EMP" DROP CONSTRAINT "SQL160617141927160";

DROP INDEX "APP"."SQL160617141927160";

DROP INDEX "APP"."SQL160617141927161";

DROP TABLE "APP"."EMP";

CREATE TABLE "APP"."EMP" (
		"EMPID" INTEGER NOT NULL,
		"EMPNAME" VARCHAR(12),
		"AGE" INTEGER,
		"EMPSTATUS" VARCHAR(1),
		"DEPID" INTEGER
	);

CREATE UNIQUE INDEX "APP"."SQL160617141927160" ON "APP"."EMP" ("EMPID" ASC);

CREATE INDEX "APP"."SQL160617141927161" ON "APP"."EMP" ("DEPID" ASC);

ALTER TABLE "APP"."EMP" ADD CONSTRAINT "SQL160617141927160" PRIMARY KEY ("EMPID");

ALTER TABLE "APP"."EMP" ADD CONSTRAINT "SQL160617141927161" FOREIGN KEY ("DEPID")
	REFERENCES "APP"."DEP" ("DEPID");

