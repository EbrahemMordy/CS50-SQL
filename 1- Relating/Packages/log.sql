
-- *** The Lost Letter ***

SELECT * FROM "addresses" WHERE "id" = (
    SELECT "address_id" FROM "scans" WHERE "package_id" = (
        SELECT "id" FROM "packages" WHERE
        "from_address_id" =(
            SELECT "id" FROM "addresses" WHERE "address" = "900 Somerville Avenue"
        )
        AND
        "to_address_id" = (
            SELECT "id" FROM "addresses" WHERE "address" LIKE "2 Fi%"
        )
    )
    AND "action" = "Drop"
);

-- *** The Devious Delivery ***

SELECT * FROM "packages" WHERE "from_address_id" IS NULL;

SELECT * FROM "addresses" WHERE "id" =(
    SELECT "address_id" FROM "scans" WHERE
    "package_id" =(
        SELECT "id" FROM "packages" WHERE "from_address_id" IS NULL
    )
    AND
    "action" = "Drop"
);

-- *** The Forgotten Gift ***

