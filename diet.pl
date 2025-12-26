% Facts: disease and suggested diet
diet(diabetes, low_sugar_diet).
diet(bp, low_salt_diet).
diet(obesity, low_fat_diet).
diet(anemia, iron_rich_diet).
diet(heart_problem, low_cholesterol_diet).

% Rule to suggest diet based on disease
suggest_diet(Disease, Diet) :-
    diet(Disease, Diet).
