SELECT "salary" FROM "salaries"
WHERE "year" = 2001 AND
"player_id" IN (
    SELECT "player_id" FROM "performances"
    WHERE "HR" = (
        SELECT MAX("HR") FROM "performances"
    )
    AND
    "year" = 2001
);
