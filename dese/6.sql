SELECT "name" from "schools" where "id" IN (SELECT "school_id" from "graduation_rates" where "graduated"=100);
