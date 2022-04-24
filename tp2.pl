% 1- prédicat donnant la longueur une liste

longueur([],0).
longueur([_|R],N):- longueur(R,M),N is M+1.

% 2-  prédicat réussissant si élément est dans la liste
estdans(E,[E|_]).
estdans(E,[F|R]):- F\==E, estdans(E,R).

% 3-  prédicat permettant de concaténer deux listes puis un autre pour renverser une liste

concat([], L2, L2).
concat([E|R],L2,[E|L]) :- concat(R,L2,L).

rev([],[]).
rev([E|R],L) :- rev(R,Rr), concat(Rr,[E],L).

% 4- un prédicat permettant de mettre à plat une liste dont les éléments sont soit simples, soit des list>
inlist([]).
inlist([_|_]).

aplatir([],[]).
aplatir([E|R],L) :- not(inlist(E)), aplatir(R,LR), concat([E],LR,L).
aplatir([E|R],L) :- inlist(E), aplatir(E,LE), aplatir(R,LR), concat(LE,LR,L).


% II Chaine de caractere

% 1-
% nl . affiche un saut a la ligne  new line
putlist([]).
putlist([E|R]):- put(E),nl,putlist(R).

epelle(X):- name(X,L),putlist(L).

% III Arbre

% 1-
est_arbin(nil).
est_arbin(t(AG,X,AD)) :- est_arbin(AG), est_arbin(AD).


% 2-
dans(X,t(_,X,_)).
dans(X,t(AG,_,_)) :- dans(X,t(X,AG)).
dans(X,t(_,_,AD)) :- dans(X,t(X,AD)).