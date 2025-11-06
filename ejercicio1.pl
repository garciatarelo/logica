%Ejercicio 1

jefe(marck_zuckerberg, sheryl_sandberg).
jefe(sheryl_sandberg, david_wehner).
jefe(sheryl_sandberg, timothy_campos).
jefe(sheryl_sandberg, mike_schroepfer).
jefe(sheryl_sandberg, elliot_schrage).
jefe(sheryl_sandberg, lori_goler).
jefe(elliot_schrage, rebecca_van_dyck).
jefe(elliot_schrage, heather_freeland).

%Preguntas

%1. ¿Quién es el jefe de Rebbecca?
%jefe(Jefe, rebecca_van_dyck).   
% Respuesta: Elliot Schrage

%2. ¿Es jefe Mark del jefe de Rebecca?
%jefe(marck_zuckerberg, rebecca_van_dyck).
%Respuesta: No

%3. ¿Es Lori jefe de alguien?
%jefe(lori_goler, X).
%Respuesta: No

%4. ¿Mostrar empleados del jefe de Heather
%jefe(X, heather_freeland), jefe(X, Y).
%Respuesta: Rebecca Van Dyck y Heather Freeland

%5. ¿Es Timothy jefe de Rebecca?
%jefe(timothy_campos, rebecca_van_dyck).
%Respuesta: No

%6. Mostrar compañeros de nivel de Mike
%jefe(X, mike_schroepfer), jefe(X,Y).
%Respuesta:
%X = sheryl_sandberg,
%Y = david_wehner ;
%X = sheryl_sandberg,
%Y = timothy_campos ;
%X = sheryl_sandberg,
%Y = mike_schroepfer ;
%X = sheryl_sandberg,
%Y = elliot_schrage ;
%X = sheryl_sandberg,
%Y = lori_goler.

%7. ¿Es el jefe de Rebecca compañero de nivel de David?
%jefe(X, rebecca_van_dyck), jefe(Y,X), jefe(Y, david_wehner).
%Respuesta: Si

%8. ¿Es compañero de nivel Mike de Lori?
%jefe(X, mike_schroepfer), jefe(X, lori_goler).
%Respuesta: Si