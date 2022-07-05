select comment, stars, people_id 
from rating r
inner join immobile i on i.id = r.immobile_id
inner join people p on p.id = r.people_id
