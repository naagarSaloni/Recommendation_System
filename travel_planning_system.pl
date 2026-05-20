 % ==========================================================
% Travel Planning Management System (Prolog)
% Advanced AI Expert System Project
% MCA II Semester AI Project
% Domain: Tourist Site / Travel Recommendation
% ==========================================================

:- dynamic user_trip/7.
:- dynamic user_preference/2.

% ==========================================================
% FACTS: destination(Name, Purpose, Climate, Budget,
%                    Duration, Transport, Crowd).
% ==========================================================

destination(manali, adventure, cold, medium, medium, bus, medium).
destination(manali, honeymoon, cold, medium, medium, bus, medium).
destination(manali, family, cold, medium, medium, car, medium).

destination(goa, leisure, tropical, medium, short, flight, high).
destination(goa, honeymoon, tropical, high, short, flight, high).
destination(goa, friends, tropical, medium, short, train, high).

destination(jaipur, heritage, hot, low, short, train, medium).
destination(jaipur, family, hot, medium, short, car, medium).
destination(jaipur, cultural, hot, low, short, bus, medium).

destination(shimla, family, cold, medium, short, bus, high).
destination(shimla, honeymoon, cold, medium, short, car, high).
destination(shimla, leisure, cold, medium, short, train, high).

destination(udaipur, honeymoon, pleasant, medium, short, car, medium).
destination(udaipur, family, pleasant, medium, short, train, medium).
destination(udaipur, heritage, pleasant, medium, short, bus, medium).

destination(rishikesh, adventure, pleasant, low, short, bus, medium).
destination(rishikesh, spiritual, pleasant, low, short, train, medium).
destination(rishikesh, friends, pleasant, low, short, bus, medium).

destination(darjeeling, leisure, cold, medium, medium, train, medium).
destination(darjeeling, honeymoon, cold, medium, medium, flight, medium).
destination(darjeeling, family, cold, medium, medium, train, medium).

destination(kerala, family, tropical, high, long, flight, medium).
destination(kerala, honeymoon, tropical, high, long, flight, medium).
destination(kerala, leisure, tropical, high, long, train, medium).

destination(ladakh, adventure, cold, high, long, flight, low).
destination(ladakh, friends, cold, high, long, bike, low).
destination(ladakh, photography, cold, high, long, flight, low).

destination(varanasi, spiritual, hot, low, short, train, high).
destination(varanasi, cultural, hot, low, short, bus, high).
destination(varanasi, family, hot, low, short, train, high).

destination(andaman, leisure, tropical, high, long, flight, low).
destination(andaman, honeymoon, tropical, high, long, flight, low).
destination(andaman, adventure, tropical, high, long, flight, low).

destination(mussoorie, family, cold, medium, short, car, high).
destination(mussoorie, honeymoon, cold, medium, short, bus, high).
destination(mussoorie, leisure, cold, medium, short, bus, high).

destination(amritsar, spiritual, pleasant, low, short, train, high).
destination(amritsar, family, pleasant, low, short, bus, high).
destination(amritsar, cultural, pleasant, low, short, train, high).

destination(agra, heritage, hot, low, short, train, high).
destination(agra, family, hot, low, short, bus, high).
destination(agra, honeymoon, pleasant, medium, short, car, high).

destination(ooty, leisure, cold, medium, medium, train, medium).
destination(ooty, honeymoon, cold, medium, medium, car, medium).
destination(ooty, family, cold, medium, medium, bus, medium).

destination(kasol, adventure, cold, low, medium, bus, low).
destination(kasol, friends, cold, low, medium, bus, low).
destination(kasol, leisure, cold, low, medium, bus, low).

destination(mount_abu, family, pleasant, low, short, car, medium).
destination(mount_abu, honeymoon, pleasant, medium, short, bus, medium).
destination(mount_abu, leisure, pleasant, low, short, car, medium).

destination(srinagar, honeymoon, cold, high, medium, flight, medium).
destination(srinagar, family, cold, high, medium, flight, medium).
destination(srinagar, leisure, cold, high, medium, flight, medium).

destination(hampi, heritage, hot, low, medium, train, low).
destination(hampi, cultural, hot, low, medium, bus, low).
destination(hampi, photography, hot, low, medium, train, low).

destination(coorg, leisure, pleasant, medium, medium, car, low).
destination(coorg, honeymoon, pleasant, medium, medium, car, low).
destination(coorg, family, pleasant, medium, medium, bus, low).

destination(meghalaya, adventure, pleasant, medium, long, flight, low).
destination(meghalaya, photography, pleasant, medium, long, flight, low).
destination(meghalaya, leisure, pleasant, medium, long, flight, low).

% ==========================================================
% HOTEL TYPES
% ==========================================================

hotel_type(manali, hotel).
hotel_type(manali, resort).

hotel_type(goa, resort).
hotel_type(goa, beach_hotel).

hotel_type(jaipur, heritage_hotel).
hotel_type(jaipur, hotel).

hotel_type(shimla, hotel).
hotel_type(shimla, cottage).

hotel_type(udaipur, lake_view_hotel).
hotel_type(udaipur, resort).

hotel_type(rishikesh, camp).
hotel_type(rishikesh, hostel).

hotel_type(darjeeling, hotel).
hotel_type(darjeeling, homestay).

hotel_type(kerala, houseboat).
hotel_type(kerala, resort).

hotel_type(ladakh, camp).
hotel_type(ladakh, guest_house).

hotel_type(varanasi, dharamshala).
hotel_type(varanasi, hotel).

hotel_type(andaman, beach_resort).
hotel_type(andaman, hotel).

hotel_type(mussoorie, hotel).
hotel_type(mussoorie, cottage).

hotel_type(amritsar, hotel).
hotel_type(amritsar, guest_house).

hotel_type(agra, hotel).
hotel_type(agra, heritage_hotel).

hotel_type(ooty, cottage).
hotel_type(ooty, hotel).

hotel_type(kasol, hostel).
hotel_type(kasol, camp).

hotel_type(mount_abu, hotel).
hotel_type(mount_abu, resort).

hotel_type(srinagar, houseboat).
hotel_type(srinagar, hotel).

hotel_type(hampi, homestay).
hotel_type(hampi, hostel).

hotel_type(coorg, resort).
hotel_type(coorg, homestay).

hotel_type(meghalaya, homestay).
hotel_type(meghalaya, guest_house).

% ==========================================================
% ACTIVITIES
% ==========================================================

activity(manali, paragliding).
activity(manali, snow_view).
activity(manali, trekking).

activity(goa, beach).
activity(goa, nightlife).
activity(goa, water_sports).

activity(jaipur, palace_visit).
activity(jaipur, shopping).
activity(jaipur, fort_tour).

activity(shimla, mall_road).
activity(shimla, toy_train).
activity(shimla, sightseeing).

activity(udaipur, boat_ride).
activity(udaipur, palace_visit).
activity(udaipur, photography).

activity(rishikesh, river_rafting).
activity(rishikesh, yoga).
activity(rishikesh, camping).

activity(darjeeling, tea_garden).
activity(darjeeling, toy_train).
activity(darjeeling, sunrise_view).

activity(kerala, backwaters).
activity(kerala, ayurveda).
activity(kerala, houseboat_stay).

activity(ladakh, bike_trip).
activity(ladakh, monastery_visit).
activity(ladakh, stargazing).

activity(varanasi, ganga_aarti).
activity(varanasi, temple_visit).
activity(varanasi, boat_ride).

activity(andaman, scuba_diving).
activity(andaman, beach).
activity(andaman, island_tour).

activity(mussoorie, sightseeing).
activity(mussoorie, cable_car).
activity(mussoorie, shopping).

activity(amritsar, golden_temple).
activity(amritsar, wagah_border).
activity(amritsar, local_food).

activity(agra, taj_mahal).
activity(agra, fort_tour).
activity(agra, heritage_walk).

activity(ooty, boating).
activity(ooty, tea_garden).
activity(ooty, sightseeing).

activity(kasol, trekking).
activity(kasol, riverside_camping).
activity(kasol, cafe_hopping).

activity(mount_abu, boating).
activity(mount_abu, sunset_point).
activity(mount_abu, temple_visit).

activity(srinagar, shikara_ride).
activity(srinagar, garden_visit).
activity(srinagar, snowfall).

activity(hampi, ruins_exploration).
activity(hampi, cycling).
activity(hampi, photography).

activity(coorg, coffee_estate).
activity(coorg, waterfall_visit).
activity(coorg, trekking).

activity(meghalaya, cave_exploration).
activity(meghalaya, waterfall_visit).
activity(meghalaya, living_root_bridge).

% ==========================================================
% BEST SEASON
% ==========================================================

best_season(manali, winter).
best_season(goa, winter).
best_season(jaipur, winter).
best_season(shimla, summer).
best_season(udaipur, winter).
best_season(rishikesh, spring).
best_season(darjeeling, spring).
best_season(kerala, winter).
best_season(ladakh, summer).
best_season(varanasi, winter).
best_season(andaman, winter).
best_season(mussoorie, summer).
best_season(amritsar, winter).
best_season(agra, winter).
best_season(ooty, summer).
best_season(kasol, spring).
best_season(mount_abu, winter).
best_season(srinagar, spring).
best_season(hampi, winter).
best_season(coorg, winter).
best_season(meghalaya, monsoon).

% ==========================================================
% COST AND RATINGS
% ==========================================================

estimated_cost(manali, 18000).
estimated_cost(goa, 25000).
estimated_cost(jaipur, 10000).
estimated_cost(shimla, 16000).
estimated_cost(udaipur, 17000).
estimated_cost(rishikesh, 9000).
estimated_cost(darjeeling, 20000).
estimated_cost(kerala, 35000).
estimated_cost(ladakh, 42000).
estimated_cost(varanasi, 8000).
estimated_cost(andaman, 45000).
estimated_cost(mussoorie, 15000).
estimated_cost(amritsar, 9000).
estimated_cost(agra, 8500).
estimated_cost(ooty, 19000).
estimated_cost(kasol, 11000).
estimated_cost(mount_abu, 9500).
estimated_cost(srinagar, 30000).
estimated_cost(hampi, 12000).
estimated_cost(coorg, 18000).
estimated_cost(meghalaya, 28000).

rating(manali, 8).
rating(goa, 9).
rating(jaipur, 8).
rating(shimla, 7).
rating(udaipur, 9).
rating(rishikesh, 8).
rating(darjeeling, 8).
rating(kerala, 9).
rating(ladakh, 10).
rating(varanasi, 8).
rating(andaman, 9).
rating(mussoorie, 7).
rating(amritsar, 8).
rating(agra, 7).
rating(ooty, 8).
rating(kasol, 8).
rating(mount_abu, 7).
rating(srinagar, 9).
rating(hampi, 8).
rating(coorg, 8).
rating(meghalaya, 9).

% ==========================================================
% ECO FRIENDLY DESTINATIONS
% ==========================================================

eco_friendly_destination(meghalaya).
eco_friendly_destination(coorg).
eco_friendly_destination(rishikesh).

% ==========================================================
% BASIC RULES
% ==========================================================

cheap_trip(Destination) :-
    estimated_cost(Destination, Cost),
    Cost =< 10000.

premium_trip(Destination) :-
    estimated_cost(Destination, Cost),
    Cost >= 30000.

family_friendly(Destination) :-
    destination(Destination, family, _, _, _, _, _).

adventure_trip(Destination) :-
    destination(Destination, adventure, _, _, _, _, _).

honeymoon_trip(Destination) :-
    destination(Destination, honeymoon, _, _, _, _, _).

spiritual_trip(Destination) :-
    destination(Destination, spiritual, _, _, _, _, _).

low_crowd_place(Destination) :-
    destination(Destination, _, _, _, _, _, low).

% ==========================================================
% RECOMMENDATION RULES
% ==========================================================

recommend_trip(Purpose, Climate, Budget, Duration,
               Transport, Crowd, Destination) :-

    destination(Destination, Purpose, Climate,
                Budget, Duration, Transport, Crowd), !.

recommend_by_activity(Activity, Destination) :-
    activity(Destination, Activity).

recommend_by_season(Season, Destination) :-
    best_season(Destination, Season).

recommend_hotel(Destination, Hotel) :-
    hotel_type(Destination, Hotel).

% ==========================================================
% SCORING RULES
% ==========================================================

purpose_score(Destination, Purpose, 3) :-
    destination(Destination, Purpose, _, _, _, _, _), !.
purpose_score(_, _, 0).

climate_score(Destination, Climate, 2) :-
    destination(Destination, _, Climate, _, _, _, _), !.
climate_score(_, _, 0).

budget_score(Destination, Budget, 2) :-
    destination(Destination, _, _, Budget, _, _, _), !.
budget_score(_, _, 0).

duration_score(Destination, Duration, 1) :-
    destination(Destination, _, _, _, Duration, _, _), !.
duration_score(_, _, 0).

transport_score(Destination, Transport, 1) :-
    destination(Destination, _, _, _, _, Transport, _), !.
transport_score(_, _, 0).

crowd_score(Destination, Crowd, 1) :-
    destination(Destination, _, _, _, _, _, Crowd), !.
crowd_score(_, _, 0).

trip_score(Destination, Purpose, Climate, Budget,
           Duration, Transport, Crowd, Score) :-

    purpose_score(Destination, Purpose, S1),
    climate_score(Destination, Climate, S2),
    budget_score(Destination, Budget, S3),
    duration_score(Destination, Duration, S4),
    transport_score(Destination, Transport, S5),
    crowd_score(Destination, Crowd, S6),

    Score is S1 + S2 + S3 + S4 + S5 + S6.

% ==========================================================
% DESTINATION LIST
% ==========================================================

all_destinations([
manali, goa, jaipur, shimla, udaipur,
rishikesh, darjeeling, kerala, ladakh,
varanasi, andaman, mussoorie, amritsar,
agra, ooty, kasol, mount_abu, srinagar,
hampi, coorg, meghalaya
]).

% ==========================================================
% BUILD SCORE LIST
% ==========================================================

build_score_list([], _, _, _, _, _, _, []).

build_score_list([D|T], Purpose, Climate,
                 Budget, Duration, Transport,
                 Crowd, [[D,Score]|R]) :-

    trip_score(D, Purpose, Climate,
               Budget, Duration,
               Transport, Crowd, Score),

    build_score_list(T, Purpose, Climate,
                     Budget, Duration,
                     Transport, Crowd, R).

% ==========================================================
% INSERTION SORT
% ==========================================================

insert_score([D,S], [], [[D,S]]).

insert_score([D,S], [[D1,S1]|T],
            [[D,S],[D1,S1]|T]) :-

    S >= S1, !.

insert_score([D,S], [[D1,S1]|T],
            [[D1,S1]|R]) :-

    insert_score([D,S], T, R).

insertion_sort([], []).

insertion_sort([H|T], Sorted) :-
    insertion_sort(T, Temp),
    insert_score(H, Temp, Sorted).

% ==========================================================
% FILTER POSITIVE SCORES
% ==========================================================

filter_positive_scores([], []).

filter_positive_scores([[D,S]|T], [[D,S]|R]) :-
    S > 0,
    filter_positive_scores(T, R).

filter_positive_scores([[_,S]|T], R) :-
    S =< 0,
    filter_positive_scores(T, R).

% ==========================================================
% BEST TRIP
% ==========================================================

best_trip(Purpose, Climate, Budget, Duration,
          Transport, Crowd, SortedList) :-

    all_destinations(List),

    build_score_list(List, Purpose, Climate,
                     Budget, Duration,
                     Transport, Crowd, ScoreList),

    filter_positive_scores(ScoreList, PositiveList),

    insertion_sort(PositiveList, SortedList).

% ==========================================================
% TOP RECOMMENDATION
% ==========================================================

top_recommendation(Purpose, Climate, Budget,
                   Duration, Transport, Crowd,
                   Destination, Score) :-

    best_trip(Purpose, Climate, Budget,
              Duration, Transport, Crowd,
              [[Destination,Score]|_]).

% ==========================================================
% TOP 3 RECOMMENDATIONS
% ==========================================================

top_three_recommendations(Purpose, Climate, Budget,
                          Duration, Transport, Crowd) :-

    best_trip(Purpose, Climate, Budget,
              Duration, Transport, Crowd,
              [A,B,C|_]),

    write(A), nl,
    write(B), nl,
    write(C), nl.

% ==========================================================
% SAVE USER TRIP
% ==========================================================

save_trip(User, Purpose, Climate, Budget,
          Duration, Transport, Crowd) :-

    assertz(user_trip(User, Purpose, Climate,
                      Budget, Duration,
                      Transport, Crowd)).

show_saved_trip(User, Purpose, Climate,
                Budget, Duration,
                Transport, Crowd) :-

    user_trip(User, Purpose, Climate,
              Budget, Duration,
              Transport, Crowd).

% ==========================================================
% EXPLANATION SYSTEM
% ==========================================================

explain_recommendation(Destination) :-

    destination(Destination, Purpose, Climate,
                Budget, Duration,
                Transport, Crowd),

    write('Destination: '), write(Destination), nl,
    write('Purpose: '), write(Purpose), nl,
    write('Climate: '), write(Climate), nl,
    write('Budget: '), write(Budget), nl,
    write('Duration: '), write(Duration), nl,
    write('Transport: '), write(Transport), nl,
    write('Crowd Level: '), write(Crowd), nl.

why_recommended(Destination, Purpose) :-

    destination(Destination, Purpose, _, _, _, _, _),

    write(Destination),
    write(' is recommended because it matches purpose: '),
    write(Purpose), nl.

% ==========================================================
% NEGATIVE REASONING
% ==========================================================

avoid_crowded_places(Destination) :-

    destination(Destination, _, _, _, _, _, high),

    write(Destination),
    write(' may be crowded during peak season.'), nl.

% ==========================================================
% TRAVEL ADVICE SYSTEM
% ==========================================================

travel_advice(manali) :-
    write('Carry woolen clothes and snow shoes.'), nl.

travel_advice(goa) :-
    write('Carry sunscreen and beachwear.'), nl.

travel_advice(ladakh) :-
    write('Carry oxygen support medicines and jackets.'), nl.

travel_advice(rishikesh) :-
    write('Carry trekking shoes and light clothes.'), nl.

% ==========================================================
% PHOTOGRAPHY DESTINATIONS
% ==========================================================

perfect_for_photography(Destination) :-
    activity(Destination, photography).

perfect_for_photography(Destination) :-
    activity(Destination, sunrise_view).

perfect_for_photography(Destination) :-
    activity(Destination, waterfall_visit).

perfect_for_photography(Destination) :-
    activity(Destination, snow_view).

% ==========================================================
% LUXURY AND BUDGET RULES
% ==========================================================

luxury_hotel_destination(Destination) :-
    hotel_type(Destination, resort).

luxury_hotel_destination(Destination) :-
    hotel_type(Destination, heritage_hotel).

luxury_hotel_destination(Destination) :-
    hotel_type(Destination, lake_view_hotel).

budget_friendly_destination(Destination) :-
    cheap_trip(Destination),
    hotel_type(Destination, hostel).

budget_friendly_destination(Destination) :-
    cheap_trip(Destination),
    hotel_type(Destination, guest_house).

% ==========================================================
% NATURAL LANGUAGE STYLE RULES
% ==========================================================

where_should_i_go_for_honeymoon(Budget,
                                Climate,
                                Destination) :-

    destination(Destination, honeymoon,
                Climate, Budget,
                _, _, _).

where_should_i_go_for_family_trip(Budget,
                                  Destination) :-

    destination(Destination, family,
                _, Budget,
                _, _, _).

best_place_for_summer(Destination) :-
    best_season(Destination, summer).

cheap_honeymoon_place(Destination) :-

    honeymoon_trip(Destination),
    cheap_trip(Destination).

% ==========================================================
% USER PREFERENCE LEARNING
% ==========================================================

save_preference(User, Preference) :-
    assertz(user_preference(User, Preference)).

show_preference(User, Preference) :-
    user_preference(User, Preference).

% ==========================================================
% RECURSIVE DISPLAY HELPERS
% ==========================================================

print_recommendations([]).

print_recommendations([[D,S]|T]) :-

    write(D),
    write(' -> score: '),
    write(S), nl,

    print_recommendations(T).

print_activities(Destination) :-

    activity(Destination, Activity),

    write(Activity), nl,

    fail.

print_activities(_).

print_hotels(Destination) :-

    hotel_type(Destination, Hotel),

    write(Hotel), nl,

    fail.

print_hotels(_).

% ==========================================================
% SAMPLE QUERIES
% ==========================================================

% ?- recommend_trip(honeymoon, cold, medium,
%                   short, car, high, X).

% ?- top_recommendation(adventure, cold,
%                       high, long, flight,
%                       low, D, S).

% ?- best_trip(family, pleasant, medium,
%              short, car, medium, L).

% ?- explain_recommendation(manali).

% ?- why_recommended(goa, leisure).

% ?- top_three_recommendations(honeymoon,
%                              pleasant,
%                              medium,
%                              short,
%                              car,
%                              medium).

% ?- avoid_crowded_places(X).

% ?- travel_advice(ladakh).

% ?- print_activities(goa).

% ?- save_trip(saloni, honeymoon,
%              pleasant, medium,
%              short, car, medium).

trip_summary(Destination, Cost, Rating, Season) :-
    estimated_cost(Destination, Cost),
    rating(Destination, Rating),
    best_season(Destination, Season).

% ==========================================================
% END OF PROJECT
% ==========================================================
