% January2018
mul(List1, List2, List3) :-
  length(List1, X),
  length(List2, Y),
  length(List3,Z),
  X*Y =:= Z.

% August2018 - Kealan's way
scissors(List1, C, List2, List3) :-
  append(List2, [C|List3], List),
  List = List1.

% Rewrite of August 2018 - My way
split(List1, C, List2, List3) :-
  append(List2, [C], X),
  append(X, List3, Y),
  write(Y),
  List1 = Y.

% Autumn 2017
check(C,[],N,V) :- V is N.

check(C, [H|T], N, V) :-
  (C = H -> 
  N1 is N+1,
  check(C, T, N1, V),
  V=:=3 ) ; check(C,T,N,V).

thrice(C, List) :-
  check(C, List, 0, V).

%% August 2016 and Autumn 2015
noah([],[],[]).
noah([X|Xs], [Y|Ys], [X|[Y|Zs]]) :- noah(Xs, Ys, Zs).