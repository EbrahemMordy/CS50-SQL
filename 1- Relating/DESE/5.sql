SELECT  "city" , COUNT(*) AS "Cot" FROM "schools"
WHERE "type" = "Public School"
GROUP BY "city"
HAVING "Cot" <=3
ORDER BY "Cot" DESC, "city";
