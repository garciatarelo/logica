%Práctica Comparaciones

%1.Comparar área del círculo 
area_circulo(Radio, Area) :- Area is pi * Radio ** 2.

comparar_area(Radio, Limite, Resultado) :- 
    area_circulo(Radio, Area),
    ( Area > Limite -> Resultado = 'Mayor';
      Area =:= Limite -> Resultado = 'Igual';
      Resultado = 'Menor' 
    ).

%Ejemplo: comparar_area(10,12, Resultado).
%Resultado: Mayor


%2. Comparar perímetro de un cuadrado
comparar_perimetro(Lado, Limite, Resultado):-Perimetro is 4 * Lado,
    (Perimetro > Limite -> Resultado = "Mayor";
    Perimetro =:= Limite -> Resultado = "Igual";
    Resultado = "Menor"
    ).

%Ejemplo: comparar_perimetro(1,10,Resultado).
%Resultado: Menor


%3. Verificar si el número es positivo, negativo o cero
verificar_numero(Numero, Resultado):-
    (Numero > 0 -> Resultado = "Positivo";
    Numero < 0 -> Resultado = "Negativo";
    Resultado = "Cero"
    ).

%Ejemplo: verificar_numero(-6, Resultado).
%Resultado: Negativo


%4. Comparar la raíz cuadrada con un valor
comparar_raiz(Numero, Valor, Resultado):- Raiz is sqrt(Numero),
    (Raiz > Valor -> Resultado = "Positivo";
    Raiz =:= Valor -> Resultado = "Igual";
    Resultado = "Negativo"
    ).

%Ejemplo: comparar_raiz(10, 2, Resultado).
%Resultado: Positivo


%5. Calcular el área de un triángulo y verificar si es mayor que 50
area_triangulo(Base, Altura, Area) :-
    Area is (Base * Altura) / 2.

verificar_area(Base, Altura, Resultado) :-
    area_triangulo(Base, Altura, Area),
    (   Area > 50 ->  Resultado = 'Mayor que 50';
    Resultado = 'Menor o igual a 50'
    ).

%Ejemplo: verificar_area(10, 12, Resultado).
%Resultado: Mayor que 50


%6. Verificar si el número es par o impar
verificar_par_impar(Numero, Resultado) :-
    (0 is Numero mod 2 -> Resultado = "Par";
     Resultado = "Impar"
    ).

%Ejemplo: verificar_par_impar(14, Resultado).
%Resultado: Par


%7. Comparar el logaritmo natural
comparar_logaritmo(Numero, Valor, Resultado):- Log is log(Numero),
    (Log > Valor -> Resultado = "Mayor";
    Log =:= Valor -> Resultado = "Igual";
    Resultado = "Menor"
    ).

%Ejemplo: comparar_logaritmo(10, 2, Resultado).
%Resultado: Mayor


%8. Calcular la potencia y verificar si supera 100
calcular_potencia(Base, Exponente, Potencia):- Potencia is Base ** Exponente.

verificar_potencia(Base, Exponente, Resultado) :-
    calcular_potencia(Base, Exponente, Potencia),
    (   Potencia > 100 -> Resultado = "Supera a 100";
        Resultado = "No supera a 100"
    ).

%Ejemplo: verificar_potencia(5, 3, Resultado).
%Resultado: "Supera a 100"