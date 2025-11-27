% EXAMEEEEEEEN 😭

% 1. HECHOOOOOS
padre(iswim, sasl).
padre(iswim, ml).
padre(iswim, hope).


padre(sasl, krc).
padre(krc, miranda).


padre(ml, miranda).
padre(hope, miranda).


padre(miranda, haskell).


padre(haskell, mondrian).
padre(haskell, 'haskell++'). 
padre(haskell, 'ohaskell').   


padre(c, 'c++').


anio_creacion(haskell, 1990).
anio_creacion(miranda, 1985).
anio_creacion('c++', 1985).


% 2. MOSTRAR DERIVADOS
% Muestrar los derivados de ML.
% Consulta: padre(ml, X).
% Respuesta esperada: X = miranda.

es_hijo(Hijo, Padre) :- padre(Padre, Hijo).


% 3. PREGUNTA DE VALIDACIÓN
% ¿Es hijo KRC de C++?
% Consulta: padre('c++', krc).
% Respuesta esperada: false.


%4. REGLA PARA HERMANOS
% ¿Es Mondrian hermano de Haskell++?
% Consulta: hermano(mondrian, 'haskell++').
% Respuesta esperada: true.

hermano(A, B) :-
    padre(P, A),     
    padre(P, B),     
    A \= B.         
 

% 5. REGLA INVENTADA
% Verificar si un lenguaje es ISWIM
es_iswim(X) :- X = iswim.
% Consulta: es_iswim(iswim).
% Respuesta esperada: true.


% 6. REGLA INVENTADA CON ARITMÉTICA
% Calcular la edad del lenguaje restando su año de creación al año actual (2025).
% Consulta: edad_lenguaje(haskell, Edad).
% Respuesta = 35.

edad_lenguaje(Lenguaje, Edad) :-
    anio_creacion(Lenguaje, Anio), 
    Edad is 2025 - Anio.           


% 7. REGLA INVENTADA CON COMPARADOR
% Clasificar si un lenguaje es "Clásico" (creado antes del 2000).
% Consulta: es_clasico(haskell).
% Respuesta = true.

es_clasico(Lenguaje) :-
    anio_creacion(Lenguaje, Anio),
    Anio < 2000.   