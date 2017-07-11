%Ryan Lachman
%CS355
%7/17/2016
%Prolog
random_between(L, U, R) :-
 integer(L), integer(U), !,
 U >= L,
 R is L+random((U+1)-L).
random_between(L, U, _) :-
 must_be(integer, L),
 must_be(integer, U).
createFamily(X, Y) :-
 length(X, Y),
 maplist(init, X),
 write('Family Members as Ints:').
init(Z) :-
 Z is random(500).
createNeighborhood(X, Y) :-
 length(X, Y),
 maplist(init, X),
 write('Neighborhoods holding Families').
firstFamily(tom, john, mike).
secondFamily(shelly, lisa, steve).
thirdFamily(arnold, estaban, selma).
infectionHost(fisrtFamily, false).
infectionHost(secondFamily, false).
infectionHost(thirdFamily, false).
firstContaminatedGroup(firstFamily).
contaminationResistanceScore(firstFamily, 0.25).
contaminationResistanceScore(secondFamliy, 0.50).
contaminationResistanceScore(thirdFamily, 0.75).
contaminationDate(firstFamily, monday).
contaminationDate(secondFamily, tuesday).
contaminationDate(thirdFamily, wednesday).
neighborhood(firstFamily,secondFamily,thirdFamily).
%infectedFormula().
read_file(File) :-
  open(File, input, Stream),
  get_char(Stream, Char1),
  process_stream(Char1, Stream),
  close(Stream).
write_file(File, Text) :-
  open(File, output, Stream),
  write(Stream, Text), nl,
  close(Stream).
menu :-
  write('\n***************************************'),
  write('\n***************************************'),
  write('\nChoose a Letter'),
  write('\nA) Help Menu'),
  write('\nB) Group Info'),
  write('\nC) Infection Results'),
  write('\nD) Time step'),
  write('\n***************************************'),
  write('\n***************************************'),
  write('\nCS355 - Ryan Lachman - Project 2 Prolog').

