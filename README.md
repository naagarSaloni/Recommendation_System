# Travel Planning Management System in Prolog

This project is made according to the MCA II Semester AI assignment requirement for a **mini recommendation system in Prolog**.

## Project idea
A user enters travel preferences like:
- purpose
- climate
- budget
- duration
- transport
- crowd preference

The system recommends the best travel destination using Prolog facts and rules.

## Files
- `travel_planning_system.pl` -> main Prolog source code
- `sample_queries.txt` -> ready queries for viva/demo

## Features
- travel destination recommendation
- budget based recommendation
- honeymoon / family / adventure / spiritual recommendations
- activity based suggestions
- hotel suggestion by destination
- top recommendation using scoring
- custom insertion sort
- user trip saving and recall
- natural language style query rules

## Tools needed
Install **SWI-Prolog**.

## How to run
### Step 1: Open terminal in project folder
```bash
cd travel_prolog_project
```

### Step 2: Start SWI-Prolog
```bash
swipl
```

### Step 3: Load the file
```prolog
['travel_planning_system.pl'].
```

If it loads correctly, Prolog will return `true.`

## Example queries
```prolog
?- recommend_trip(honeymoon, cold, medium, short, car, high, X).
?- top_recommendation(adventure, cold, high, long, flight, low, D, S).
?- best_trip(family, pleasant, medium, short, car, medium, L).
?- show_places_with_activity(beach, X).
?- show_cost_of_trip(goa, Cost).
?- show_rating_of_place(ladakh, Rating).
?- show_best_hotel_type(udaipur, HotelType).
?- save_trip(saloni, honeymoon, pleasant, medium, short, car, medium).
?- saved_user_recommendation(saloni, D, S).
?- trip_summary(udaipur, Cost, Rating, Season).
```

## For college presentation
You can explain:
1. Facts store destination knowledge.
2. Rules match user preferences.
3. Scoring rule finds best possible place.
4. Insertion sort is written manually.
5. User trip is saved using dynamic facts.
6. Natural language style rules make the system easy to query.

## Suggested project title
**Travel Planning Management and Recommendation System using Prolog**
