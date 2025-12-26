%Database facts
person(johnny,(18,2,2637)).
person(badri,(23,5,1994)).
person(adhi,(30,12,2006)).
%Query by name
dob(Name,DOB):-
      person(Name,DOB).
%Query by year
born_in_year(Name,Year)):-
        person(Name,_,_,Year).
