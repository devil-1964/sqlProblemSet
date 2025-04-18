SELECT "city",count("name") from "schools" where "type" LIKE 'Public School' group by "city" having count("name")<4 order by count("name") desc, "city" asc;
