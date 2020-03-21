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



powerset([], []).
powerset([H|T], P) :- powerset(T,P).
powerset([H|T], [H|P]) :- powerset(T,P).
