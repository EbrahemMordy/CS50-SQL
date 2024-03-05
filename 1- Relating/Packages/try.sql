SELECT * FROM "packages" WHERE "from_address_id" = (
        SELECT "id" FROM "addresses" WHERE "address"= "109 Tileston Street"
);

SELECT * FROM "drivers" WHERE "id" = (
    SELECT "driver_id" FROM "scans" WHERE
    "package_id" = (
        SELECT "id" FROM "packages" WHERE
        "from_address_id" = (
            SELECT "id" FROM "addresses" WHERE "address"= "109 Tileston Street"
        )
        AND
        "to_address_id" = (
            SELECT "id" FROM "addresses" WHERE "address"= "728 Maple Place"
        )
    )
    AND
    "timestamp" = (
        SELECT MAX("timestamp") FROM "scans" WHERE "package_id" = (
            SELECT "id" FROM "packages" WHERE
            "from_address_id" = (
                SELECT "id" FROM "addresses" WHERE "address"= "109 Tileston Street"
            )
            AND
            "to_address_id" = (
                SELECT "id" FROM "addresses" WHERE "address"= "728 Maple Place"
            )
        )
    )
);

