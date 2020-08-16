
grand_child(Child,Grand):-
	children(Parent,Grand),
	children(Child,Parent).

great_grand_parent(GreatGrand,Child):-
	children(Grand,GreatGrand),
	children(Parent,Grand),
	children(Child,Parent).

ancestor(Ancestor,Child):-
	children(Child,Ancestor).
ancestor(Ancestor,Child):-
	grand_child(Child,Ancestor).
ancestor(Ancestor,Child):-
	great_grand_parent(Ancestor,Child).


son(Child,Parent):-
	children(Child,Parent),
	male(Child).

daughter(Child,Parent):-
	children(Child,Parent),
	female(Child).


brother(Brother,Me):-
	son(Brother,Parent),
	children(Me,Parent),
	Brother \= Me.

sister(Sister,Me):-
	daughter(Sister,Parent),
	children(Me,Parent),
	Sister \= Me.


sister_in_law(Sister,Me):-
	couple(Me,Couple),
	sister(Sister,Couple).

sister_in_law(Sister,Me):-
	couple(Me,Couple),
	brother(Sibling,Couple),
	couple(Sibling,Sister).


brother_in_law(Brother,Me):-
	couple(Me,Couple),
	brother(Brother,Couple).

brother_in_law(Brother,Me):-
	couple(Me,Couple),
	sister(Sibling,Couple),
	couple(Sibling,Brother).



children(elizabeth,george).
children(elizabeth,mum).

children(margaret,george).
children(margaret,mum).

children(diana,spencer).
children(diana,kydd).

children(charles,elizabeth).
children(charles,philip).

children(anne,elizabeth).
children(anne,philip).

children(andrew,elizabeth).
children(andrew,philip).

children(edward,elizabeth).
children(edward,philip).

children(william,diana).
children(william,charles).

children(harry,diana).
children(harry,charles).

children(peter,anne).
children(peter,mark).

children(zara,anne).
children(zara,mark).

children(beatrice,andrew).
children(beatrice,sarah).

children(eugenie,andrew).
children(eugenie,sarah).

children(louise,edward).
children(louise,sophie).

children(james,edward).
children(james,sophie).

female(mum).
female(elizabeth).
female(margaret).
female(diana).
female(anne).
female(sarah).
female(sophie).
female(zara).
female(beatrice).
female(eugenie).
female(louise).
female(kydd).

male(george).
male(philip).
male(charles).
male(mark).
male(andrew).
male(edward).
male(spencer).
male(william).
male(harry).
male(peter).
male(james).



couple(george,mum).
couple(spencer,kydd).
couple(elizabeth,philip).
couple(diana,charles).
couple(anne,mark).
couple(andrew,sarah).
couple(edward,sophie).