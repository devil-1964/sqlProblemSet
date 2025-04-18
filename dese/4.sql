SELECT "city",count("name") from "schools" where "type" Like 'Public School' group by "city"  order by count("name") desc,  "city" asc limit 10;
