SELECT "first_name","last_name", "salaries"."salary" / "performances"."H" AS "dollars per hit" FROM "players"
JOIN "performances"
    ON "performances"."player_id"="players"."id" AND "H" > 0
JOIN "salaries"
    ON "salaries"."player_id"="players"."id" AND "salaries"."year"="performances"."year" AND "salaries"."year" = 2001
ORDER BY "dollars per hit","first_name","last_name"
LIMIT 10;
