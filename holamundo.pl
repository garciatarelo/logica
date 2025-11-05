valioso(oro).
valioso(plata).
le_gusta(juan, maria).
tiene(juan, libro).
tiene(maria, libro).


%Diagrama Genealogico
progenitor(clara, jose).
progenitor(tomas, jose).
progenitor(tomas, isabel).
progenitor(jose, ana).
progenitor(jose, patricia).
progenitor(patricia, jaime).

%progenitor(X, ana), progenitor(Y, X), progenitor(Y, Z).

%¿Es Ana tía de Jaime?
%progenitor(X, ana), progenitor(X, Y), progenitor(Y, jaime).


%¿Es Ana tía de Isabel?
%progenitor(X, ana), progenitor(X, Y), progenitor(Y, isabel).

