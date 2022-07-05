select comment, stars
from rating r
full join immobile i on i.id = r.immobile_id
full join people p on p.id = r.people_id
