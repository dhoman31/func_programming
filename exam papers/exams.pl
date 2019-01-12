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