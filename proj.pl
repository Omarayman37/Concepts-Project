offerMean(offer(dahab, [diving, snorkeling, horseRiding], 10000, 2020-02-12, 2020-03-12,
period(2020-03-15, 2020-04-15), 10, 5), bus).
offerMean(offer(taba, [diving], 1000, 2020-02-12, 2020-03-12, period(2020-06-01, 2020-08-31), 10, 1),
bus).
offerAccommodation(offer(dahab, [diving, snorkeling, horseRiding], 10000, 2020-02-12, 2020-03-12,
period(2020-03-15, 2020-04-15), 10, 5), hotel).
offerAccommodation(offer(taba, [diving], 1000, 2020-02-12, 2020-03-12, period(2020-06-01, 2020-08-31),
10, 1), cabin).
customerPreferredActivity(customer(ahmed, aly, 1993-01-30, single, 0, student), diving, 100).
customerPreferredActivity(customer(ahmed, aly, 1993-01-30, single, 0, student), snorkeling, 100).
customerPreferredActivity(customer(ahmed, aly, 1993-01-30, single, 0, student), horseRiding, 20).
customerPreferredActivity(customer(mohamed, elkasad, 1999-01-30, single, 0, student), snorkeling, 60).
customerPreferredActivity(customer(mohamed, elkasad, 1999-01-30, single, 0, student), diving, 20).
customerPreferredActivity(customer(mohamed, elkasad, 1999-01-30, single, 0, student), horseRiding,
50).
customerPreferredMean(customer(ahmed, aly, 1993-01-30, single, 0, student), bus, 100).
customerPreferredMean(customer(mohamed, elkasad, 1999-01-30, single, 0, student), bus, 10).
customerPreferredAccommodation(customer(ahmed, aly, 1993-01-30, single, 0, student), hotel, 20).
customerPreferredAccommodation(customer(ahmed, aly, 1993-01-30, single, 0, student), cabin, 50).
customerPreferredAccommodation(customer(mohamed, elkasad, 1999-01-30, single, 0, student), hotel,
100).
customerPreferredAccommodation(customer(mohamed, elkasad, 1999-01-30, single, 0, student), cabin,
79).

possibleSubset(L,R) :-
    permute(L,R).
possibleSubset(L,R) :-
	splitSet(L,_,SubList),
	SubList \= L,
	permute(SubList,R).

splitSet([ ],[ ],[ ]).
splitSet([H|T],L,[H|R]) :-
    splitSet(T,L,R).
splitSet([H|T],[H|L],R) :-
    splitSet(T,L,R).

permute([ ],[ ]).
permute(L,[X|R]) :-
    omit(X,L,M),
    permute(M,R).

omit(H,[H|T],T).
omit(X,[H|L],[H|R]) :-
    omit(X,L,R).	
	
orderSet([], []).
orderSet([H|T],[H|P]) :- orderSet(T,P).
orderSet([H|T],P) :- orderSet(T,P).

choosePreferences([dest(X),period(Y1-M1-D1,Y2-M2-D2),means(M),accommodation(A),activity(Z),budget(B)],ChosenPreferences):-
		orderSet(Z,Z1),
		orderSet([dest(X),period(Y1-M1-D1,Y2-M2-D2),means(M),accommodation(A),activity(Z1),budget(B)],ChosenPreferences).
		
preferenceSatisfaction(Offer,Customer,ChosenPrefs,S):-
		
		
				
		
	
		/offerMean(Offer,M),
		customerPreferredMean(Customer,M,R1),
		offerAccommodation(Offer,A),
		customerPreferredAccommodation(Customer,A,R2),/
		
		