%Practica 3: Operadores aritméticos

%OPERADORES ARITMÉTICOS

% 1. Suma
suma(X, Y, Resultado) :- Resultado is X + Y.
% Ejemplo: suma(5, 3, R). 
%Resultado = 8

% 2. Resta
resta(X, Y, Resultado) :- Resultado is X - Y.
% Ejemplo: resta(5, 3, R). 
%Resultado = 2

% 3. Multiplicación
multiplicacion(X, Y, Resultado) :- Resultado is X * Y.
% Ejemplo: multiplicacion(5, 3, R). 
Resultado = 15

% 4. División real
division_real(X, Y, Resultado) :- Resultado is X / Y.
% Ejemplo: division_real(5, 2, R).
%Resultado = 2.5

% 5. División entera
division_entera(X, Y, Resultado) :- Resultado is X // Y.
% Ejemplo: division_entera(5, 2, R). 
%Resultado = 2

% 6. Resto de división
resto(X, Y, Resultado) :- Resultado is X mod Y.
% Ejemplo: resto(5, 2, R). 
%Resultado = 1

% 7. Potencia
potencia(X, Y, Resultado) :- Resultado is X ** Y.
% Ejemplo: potencia(2, 3, R). 
%Resultado = 8.0

% 8. Negación
negacion(X, Resultado) :- Resultado is -X.
% Ejemplo: negacion(5, R). 
%Resultado = -5

% 9. Valor absoluto
valor_absoluto(X, Resultado) :- Resultado is abs(X).
% Ejemplo: valor_absoluto(-5, R). 
%Resultado = 5

% 10. Arco coseno
arco_coseno(X, Resultado) :- Resultado is acos(X).
% Ejemplo: arco_coseno(1, R). 
%Resultado = 0.0

% 11. Arco seno
arco_seno(X, Resultado) :- Resultado is asin(X).
% Ejemplo: arco_seno(0, R). 
%Resultado = 0.0

% 12. Arco tangente
arco_tangente(X, Resultado) :- Resultado is atan(X).
% Ejemplo: arco_tangente(1, R). 
%Resultado = 0.7853981633974483

% 13. Coseno
coseno(X, Resultado) :- Resultado is cos(X).
% Ejemplo: coseno(0, R). 
%Resultado = 1.0

% 14. Exponencial
exponencial(X, Resultado) :- Resultado is exp(X).
% Ejemplo: exponencial(1, R). 
%Resultado = 2.718281828459045

% 15. Logaritmo natural
logaritmo_natural(X, Resultado) :- Resultado is log(X).
% Ejemplo: logaritmo_natural(1, R). 
%Resultado = 0.0

% 16. Logaritmo base 2
logaritmo_base2(X, Resultado) :- Resultado is log(X) / log(2).
% Ejemplo: logaritmo_base2(8, R). 
%Resultado = 3.0

% 17. Seno
seno(X, Resultado) :- Resultado is sin(X).
% Ejemplo: seno(0, R). 
%Resultado = 0.0

% 18. Raíz cuadrada
raiz_cuadrada(X, Resultado) :- Resultado is sqrt(X).
% Ejemplo: raiz_cuadrada(9, R). 
%Resultado = 3.0

% 19. Tangente
tangente(X, Resultado) :- Resultado is tan(X).
% Ejemplo: tangente(0, R). 
%Resultado = 0.0

% 20. Redondeo
redondeo(X, N, Resultado) :- Resultado is round(X * 10^N) / 10^N.
% Ejemplo: redondeo(3.14159, 2, R). 
%Resultado = 3.14


%COMPARADORES EN TÉRMINOS

% 21. Menor que
menor(X, Y) :- X < Y.
% Ejemplo: menor(2,3). 
%Resultado = true
%Ejemplo: menor(5,1).
%Resultado = false

% 22. Mayor que
mayor(X, Y) :- X > Y.
% Ejemplo: mayor(5, 3).
%Resultado = true
% Ejemplo: mayor(3,5).
%Resultado = true

% 23. Menor o igual que
menor_igual_que(X, Y) :- X =< Y.
% Ejemplo: menor_igual_que(3, 3). 
%Resultado = true
%Ejemplo: menor_igual_que(3, 2). 
%Resultado = false

% 24. Mayor o igual que
mayor_igual_que(X, Y) :- X >= Y.
% Ejemplo: mayor_igual_que(4, 3). 
%Resultado = true
% Ejemplo: mayor_igual_que(3, 4). 
%Resultado = false

% 25. Igual que
igual_que(X, Y) :- X =:= Y.
% Ejemplo: igual_que(5, 5). 
%Resultado = true
% Ejemplo: igual_que(5, 6). 
%Resultado = false

% 26. Distinto que
distinto_que(X, Y) :- X =\= Y.
% Ejemplo: distinto_que(5, 3). 
%Resultado = true
% Ejemplo: distinto_que(5, 5). 
%Resultado = false

%COMPARADORES SINTÁCTICOS

% 27. Igual sintáctico
igual_sintactico(X, Y) :- X == Y.
% Ejemplo: igual_sintactico(Maria, Maria). 
%Resultado = true
% Ejemplo: igual_sintactico(Maria, Manolo). 
%Resultado = false

% 28. Distinto sintáctico
distinto_sintactico(X, Y) :- X \== Y.
% Ejemplo: distinto_sintactico(Maria, Manolo). 
%Resultado = true
% Ejemplo: distinto_sintactico(Maria, Maria). 
%Resultado = false

% 29. Menor sintáctico
menor_sintactico(X, Y) :- X @< Y.
% Ejemplo: menor_sintactico(Maria, Manolo). 
%Resultado = true
% Ejemplo: menor_sintactico(Manolo, Manolo). 
%Resultado = false

% 30. Mayor sintáctico
mayor_sintactico(X, Y) :- X @> Y.
% Ejemplo: mayor_sintactico(Manolo, Maria).
%Resultado = true
% Ejemplo: mayor_sintactico(Maria, Maria).
%Resultado = false

% 31. Menor o igual sintáctico
menor_igual_sintactico(X, Y) :- X @=< Y.
% Ejemplo: menor_igual_sintactico(Maria, Maria). 
%Resultado = true
% Ejemplo: menor_igual_sintactico(Manolo, Maria). 
%Resultado = true

% 32. Mayor o igual sintáctico
mayor_igual_sintactico(X, Y) :- X @>= Y.
% Ejemplo: mayor_igual_sintactico(Manolo, Manolo).
%Resultado = true
% Ejemplo: mayor_igual_sintactico(Manolo, Maria).
%Resultado = false