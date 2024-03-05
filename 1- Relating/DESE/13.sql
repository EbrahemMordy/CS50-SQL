SELECT * FROM "schools"
JOIN "districts"
    ON "districts"."id" = "schools"."district_id";
