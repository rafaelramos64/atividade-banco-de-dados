select comment, stars
from rating r
right join immobile i on i.id = r.immobile_id
right join people p on p.id = r.people_id
