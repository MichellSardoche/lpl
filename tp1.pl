% 1-

etud(X) :- etudiant(X).
etud(X) :- etudiante(X).

% 2-

habite_dans_rue(X):- habite(X,Y,Z),Y=\=0.

% 3-

voisins(X,Y):- habite(X,N,R), etud(X), etud(Y),
                           habite(Y,M,R), N=\=0, M=\=0, N==M, X\==Y.
voisins(X,Y):- habite(X,N,R), etud(X), etud(Y),
                           habite(Y,M,R), N=\=0, M=\=0, N is M+1, X\==Y.

% II-

est_dans_region(paris,'Ile de France').
est_dans_region(orleans,'Centre-Val de Loire').
est_dans_region(strasbourg,'Alsace').
est_dans_region(mulhouse,'Alsace').
est_dans_region(colmar,'Alsace').
est_dans_region(nancy,'Lorraine').
est_dans_region(toulouse,'Midi-Pyrenees').
est_dans_region(grenoble,'Rhone-Alpes').

est_dans_ville(X,Y) :- etud(X), habite(X,_,R), est_dans(R,_,V).

est_dans_R(X,Y):-est_dans(X,Y).
est_dans_R(X,Y):-est_dans(X,Z),est_dans_R(Z,Y).

est_dans_ville(X,V):-habite(X,_,V),ville(V).
est_dans_ville(X,V):-habite(X,_,R),est_dans_R(R,V),ville(V).