SELECT "username" FROM "users" WHERE "id" IN (
    SELECT "to_user_id"
    FROM "messages"
    WHERE "to_user_id" IN (
        SELECT "to_user_id"
        FROM (
            SELECT "to_user_id", COUNT(*) AS "message_count"
            FROM "messages"
            GROUP BY "to_user_id"
        )
        WHERE "message_count" = (
            SELECT MAX("max_count")
            FROM (
                SELECT COUNT(*) AS "max_count"
                FROM "messages"
                GROUP BY "to_user_id"
            )
        )
    )
    GROUP BY "to_user_id"
)
ORDER BY "username"
LIMIT 1;
