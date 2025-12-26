% Symptoms of diseases
symptom(fever).
symptom(cough).
symptom(headache).
symptom(cold).
symptom(body_pain).

% Disease rules based on symptoms
disease(flu) :-
    symptom(fever),
    symptom(cough),
    symptom(body_pain).

disease(cold_infection) :-
    symptom(cold),
    symptom(cough).

disease(migraine) :-
    symptom(headache).

disease(viral_fever) :-
    symptom(fever),
    symptom(headache).

% Diagnosis rule
diagnose(Disease) :-
    disease(Disease).
