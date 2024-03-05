SELECT  "city" , COUNT(*) AS "Cot" FROM "schools"
WHERE "type" = "Public School"
GROUP BY "city"
ORDER BY "Cot" DESC, "city"
LIMIT 10;
