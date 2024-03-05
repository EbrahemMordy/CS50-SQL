CREATE TABLE "passengers" (
    "id" INTEGER,
    "first name" TEXT NOT NULL,
    "last name" TEXT NOT NULL,
    "age" INTEGER NOT NULL CHECK("age" > 0),
    PRIMARY KEY("id")
);

CREATE TABLE "airlines" (
    "al_id" INTEGER,
    "al_name" TEXT NOT NULL,
    "al_concourses" TEXT NOT NULL CHECK("al_concourses" IN ('A', 'B', 'C', 'D', 'E', 'F', 'T') ) ,
    PRIMARY KEY("al_id")
);

CREATE TABLE "flights" (
    "f_id" INTEGER,
    "f_alid" INTEGER,
    "from" TEXT NOT NULL,
    "to" TEXT NOT NULL,
    "departure" TEXT NOT NULL,
    "arrival" TEXT NOT NULL,
    PRIMARY KEY("f_id"),
    FOREIGN KEY ("f_alid") REFERENCES "airlines"("al_id")
);

CREATE TABLE "checkins"(
    "id" INTEGER,
    "pas_id" INTEGER,
    "f_id" INTEGER,
    "datetime" TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY("id"),
    FOREIGN KEY("pas_id") REFERENCES "passengers"("id"),
    FOREIGN KEY("f_id") REFERENCES "flights"("f_id")
);
