% planet(Name, Type, DistanceFromSunAU)

planet(mercury, terrestrial, 0.39).
planet(venus,   terrestrial, 0.72).
planet(earth,   terrestrial, 1.00).
planet(mars,    terrestrial, 1.52).
planet(jupiter, gas_giant,   5.20).
planet(saturn,  gas_giant,   9.58).
planet(uranus,  ice_giant,  19.20).
planet(neptune, ice_giant,  30.05).

% Queries
terrestrial_planet(X) :-
    planet(X, terrestrial, _).

far_planet(X) :-
    planet(X, _, D),
    D > 5.
