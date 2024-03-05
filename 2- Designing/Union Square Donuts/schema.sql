CREATE TABLE "ingredients"(
    "id" INTEGER,
    "name" TEXT NOT NULL UNIQUE,
    "priceperunit" NUMERIC,
    PRIMARY KEY("id")
);

CREATE TABLE "donuts"(
    "name" TEXT,
    "gluten-free" INTEGER NOT NULL,
    "priceperdount" INTEGER NOT NULL,
    PRIMARY KEY("name")
);

CREATE TABLE "DonutIngredients"(
    "donutname" TEXT,
    "ingredientid" INTEGER,
    FOREIGN KEY ("donutname") REFERENCES "donuts"("name"),
    FOREIGN KEY ("ingredientid") REFERENCES "ingredients"("id")
);

CREATE TABLE "customers"(
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE "order"(
    "id" INTEGER,
    "customer_id" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY("customer_id") REFERENCES "customers"("id")
);

CREATE TABLE "OrderDetails"(
    "order_id" INTEGER,
    "customer_id" INTEGER,
    "donut_name" TEXT NOT NULL,
    FOREIGN KEY("order_id") REFERENCES "order"("id"),
    FOREIGN KEY("customer_id") REFERENCES "customers"("id"),
    FOREIGN KEY("donut_name") REFERENCES "donuts"("name")
);
