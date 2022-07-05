select *
from people_immobile
inner join immobile on immobile.id = people_immobile.immobile_id
inner join people on people.id = people_immobile.people_id
