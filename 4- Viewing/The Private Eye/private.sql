CREATE TABLE "ALL"(
    "id" INTEGER,
    "sentence" TEXT
);

INSERT INTO "ALL" ("id","sentence")
VALUES (
    14,
    (SELECT substr("sentence", 98, 4) FROM "sentences"
    WHERE "id" = 14)
);

INSERT INTO "ALL" ("id","sentence")
VALUES (
    114,
    (SELECT substr("sentence", 3, 5) FROM "sentences"
    WHERE "id" = 114)
);

INSERT INTO "ALL" ("id","sentence")
VALUES (
    618,
    (SELECT substr("sentence", 72, 9) FROM "sentences"
    WHERE "id" = 618)
);

INSERT INTO "ALL" ("id","sentence")
VALUES (
    630,
    (SELECT substr("sentence", 7, 3) FROM "sentences"
    WHERE "id" = 630)
);

INSERT INTO "ALL" ("id","sentence")
VALUES (
    932,
    (SELECT substr("sentence", 12, 5) FROM "sentences"
    WHERE "id" = 932)
);

INSERT INTO "ALL" ("id","sentence")
VALUES (
    2230,
    (SELECT substr("sentence", 50, 7) FROM "sentences"
    WHERE "id" = 2230)
);

INSERT INTO "ALL" ("id","sentence")
VALUES (
    2346,
    (SELECT substr("sentence", 44, 10) FROM "sentences"
    WHERE "id" = 2346)
);

INSERT INTO "ALL" ("id","sentence")
VALUES (
    3041,
    (SELECT substr("sentence", 14, 5) FROM "sentences"
    WHERE "id" = 3041)
);

CREATE VIEW "message" AS
SELECT "id" AS "id", "sentence" AS "phrase" FROM "ALL";
