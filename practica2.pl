%Práctica 2

%HECHOOOOOOOOOOOOOOS

%SUPERFAMILY
superfamily(hominoidea).

%FAMILY
family(hominidea, hominoidea).
family(hylobatidae, hominoidea).

%SUBFAMILY
subfamily(homininae, hominidea).
subfamily(ponginae, hominidea).

%TRIBE
tribe(hominini, homininae).
tribe(gorillini, homininae).

%GENUS
genus(homo, hominini).
genus(pan, hominini).
genus(gorilla, gorillini).
genus(pongo, ponginae).
genus(hylobates, hylobatidae).

%SPECIES
species(human, homo).
species(bonobo, pan).
species(chimpanzee, pan).
species(gorilla, gorilla).
species(orangutan, pongo).
species(gibbon, hylobates).



%REGLAAAAAAAAAAS

%Descendiente directo (nivel bajo)
descendiente_directo(X, Y):-family(X, Y).
descendiente_directo(X,Y):- subfamily(X, Y).
descendiente_directo(X,Y):- tribe(X, Y).
descendiente_directo(X,Y):- genus(X,Y).
descendiente_directo(X,Y):- species(X, Y).

%Descendiente (cualquier nivel) 
descendiente(X, Y) :- descendiente_directo(X, Y).
descendiente(X, Y) :- descendiente_directo(X, Z), descendiente_directo(Z, Y).
descendiente(X, Y) :- descendiente_directo(X, Z1), descendiente_directo(Z1, Z2), descendiente_directo(Z2, Y).
descendiente(X, Y) :- descendiente_directo(X, Z1), descendiente_directo(Z1, Z2), descendiente_directo(Z2, Z3), descendiente_directo(Z3, Y).

%Hermanos
hermanos(X, Y):-family(X, Z), family(Y, Z), X\=Y.
hermanos(X, Y):-subfamily(X, Z), subfamily(Y, Z), X\=Y.
hermanos(X, Y):-tribe(X, Z), tribe(Y, Z), X\=Y.
hermanos(X, Y):-genus(X, Z), genus(Y, Z), X\=Y.
hermanos(X, Y):-species(X, Z), species(Y, Z), X\=Y.

%Misma subfamilia
misma_subfamilia(X, Y) :- genus(X, A), tribe(A, B), genus(Y, C), tribe(C, B).



%PREGUNTAAAAAAS Y CONSULTAAAAAS

%1. ¿Es el gorila descendiente de hominini?
% Consulta: descendiente(gorilla, hominini).
%Respuesta: Falso.

%2. ¿Es el homo hermano del gorila?
%Consulta: hermanos(homo, gorilla).
%Respuesta: Falso.

%3. ¿Son el homo y el gorilla de la misma subfamilia?
%Consulta: misma_subfamilia(homo, gorilla).
%Respuesta: Verdadero.

%4. ¿Tiene hominini la misma familia que pongo?
%Consulta: tribe(hominini, A), subfamily(A, Y), genus(pongo, B), subfamily(B, Y).
%Respuesta: Verdadero.

%5. ¿Quiénes son los descendientes directos de una tribu?
%Consulta: tribe(hominini, Padre), genus(X, hominini).
%Respuesta: X = homo, pan.

%6. ¿Cuál es la superfamilia a la que pertenece hylobates?
%Consulta: descendiente(hylobates, X), superfamily(X).
%Respuesta: X = hominoidea.

%7. ¿Qué géneros comparten la misma subfamilia con pan?
%Consulta: genus(pan, A), tribe(A, B), genus(X, C), tribe(C, B), X \= pan.
%Respuesta: X = homo, gorilla.

%8. ¿Cuál es el ancestro común entre homo y gorilla?
%Consulta: descendiente(homo, Z), descendiente(gorilla, Z).
%Respuesta: Z = homininae, hominidea, hominoidea.

%9. ¿Es el orangutan un homínido?
%Consulta: descendiente(orangutan, hominidea).
%Respuesta: Sí.

%10. ¿Cuáles son todas las especies que pertenecen a la familia hominidae?
%Consulta: species(X, _), descendiente(X, hominidea).
%Respuesta: X = human, bonobo, chimpanzee, gorilla, orangutan.

%11. ¿Qué géneros son hermanos taxonómicos de homo?
%Consulta: hermanos(homo, X).
%Respuesta: X = pan.

%12. ¿Comparten homo y hylobates la misma familia?
%Consulta: genus(homo, A), subfamily(A, F), genus(hylobates, B), subfamily(B, F).
%Respuesta: Falso.

%13. ¿Cuáles son los descendientes directos de la subfamilia homininae?
%Consulta: descendiente_directo(X, homininae).
%Respuesta: X = hominini, gorillini.

%14. ¿Qué géneros están bajo la familia hominidae?
%Consulta: genus(X, _), descendiente(X, hominidea).
%Respuesta: X = homo, pan, gorilla, pongo.

%15. ¿Cuál es la ruta taxonómica completa desde homo hasta la superfamilia?
%Consulta: genus(homo, T), tribe(T, SF), subfamily(SF, F), family(F, SUP), superfamily(SUP).
%Respuesta: T = hominini, SF = homininae, F = hominidea, SUP = hominoidea.

