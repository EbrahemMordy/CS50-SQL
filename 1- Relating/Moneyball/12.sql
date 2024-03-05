SELECT * FROM (
    SELECT "first_name", "last_name" FROM "players"
    JOIN "salaries"
        ON "salaries"."player_id" = "players"."id"
    JOIN "performances"
        ON "performances"."player_id" = "players"."id" AND "salaries"."year"="performances"."year"
    WHERE "performances"."year" = 2001 AND "H" > 0
    ORDER BY ("salary" / "H"), "first_name", "last_name"
    LIMIT 10
)
INTERSECT

SELECT * FROM (
    SELECT "first_name", "last_name" FROM "players"
    JOIN "salaries"
        ON "salaries"."player_id" = "players"."id"
    JOIN "performances"
        ON "performances"."player_id" = "players"."id" AND "salaries"."year"="performances"."year"
    WHERE "performances"."year" = 2001 AND "RBI" > 0
    ORDER BY ("salary" / "RBI"), "first_name", "last_name"
    LIMIT 10
)
ORDER BY "last_name";
