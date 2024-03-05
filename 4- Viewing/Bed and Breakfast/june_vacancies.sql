CREATE VIEW "june_vacancies" AS
SELECT "listings"."id","property_type","host_name",COUNT("reviews"."listing_id") AS "days_vacant" FROM "listings"
JOIN "reviews" ON "listings"."id" ="reviews"."listing_id"
JOIN "availabilities" ON "listings"."id"="availabilities"."listing_id"
GROUP BY "listings"."id";
