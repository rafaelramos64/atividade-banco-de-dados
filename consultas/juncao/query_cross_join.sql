select comment, stars
from rating r
cross join immobile i
cross join people p
order by 1