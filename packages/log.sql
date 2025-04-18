
-- *** The Lost Letter ***


SELECT * from "addresses" where "id"=(
SELECT "to_address_id" from "packages" where "from_address_id"=(
    SELECT "id" from "addresses" where "address"='900 Somerville Avenue'
)
and "to_address_id"=(
    SELECT "id" from "addresses" where "address" LIKE '2 Fin%'
)
);


-- *** The Devious Delivery ***

SELECT "id" from "packages" where "from_address_id" is NULL;
SELECT * from "addresses" where "id"=(
SELECT "address_id" from "scans" where "package_id"=(
SELECT "id" from "packages" where "from_address_id" is NULL
) and "action"='Drop');

-- *** The Forgotten Gift ***
SELECT "name" from "drivers" where "id"=
(SELECT "driver_id" from "scans" where "package_id"=
(SELECT "id" from "packages" where "from_address_id"=
(SELECT "id" from "addresses" where "address"='109 Tileston Street')  ) ORDER BY "timestamp" DESC limit 1);


