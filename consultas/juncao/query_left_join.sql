select *
from people_immobile
left join immobile on immobile.id = people_immobile.immobile_id
left join people on people.id = people_immobile.people_id
