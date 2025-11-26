%Práctica Pre-Exámen Prolog

% HECHOOOS DE LOS DISPOSITIVOS DE CADA RED

% Dispositivos en RED 1 (Topología estrella)
dispositivo(pc1, red1, 1000).
dispositivo(pc2, red1, 1000).
dispositivo(pc3, red1, 1000).
dispositivo(pc4, red1, 1000).
dispositivo(switch_r1, red1, 1000). 

%Switch Especial Central
dispositivo(switch_especial, ninguna, 10000). 

% Dispositivos en RED 2 (Topología bus)
dispositivo(pc5, red2, 100).
dispositivo(pc6, red2, 100).
dispositivo(pc7, red2, 100).
dispositivo(s1, red2, 100).

% HECHOOOOS QUE DEFINEN LA CONEXION DE LAS REDES

% Conexiones RED 1
conectado(pc1, switch_r1).
conectado(pc2, switch_r1).
conectado(pc3, switch_r1).
conectado(pc4, switch_r1).

% Conexiones RED 1 al Switch Especial
conectado(switch_r1, switch_especial).
conectado(pc2, switch_especial).

% Conexiones de RED 2
conectado(pc5, pc6).
conectado(pc5, pc7).
conectado(pc5, s1).
conectado(pc6, pc7).
conectado(pc6, s1).
conectado(pc7, s1).

% Conexión de RED 2 al Switch Esecial
conectado(pc5, switch_especial).

conectado(s1, switch_especial).


%REGLAAAAAAS

%Regla para obtener todos los PCs de la red1 excepto los switches
pcs_red1(PC) :-
    dispositivo(PC, red1, 1000),
    PC \== switch_r1,  
    PC \== switch_especial,
    atom_concat(pc, _, PC). 

%Consulta: pcs_red1(PC).
%Resultado: 
%PC = pc1 ;
%PC = pc2 ;
%PC = pc3 ;
%PC = pc4 ;

%Regla para obtener todos los PCs de la red2 excepto los switches
pcs_red2(PC) :-
    dispositivo(PC, red2, 100),
    PC \== s1,
    PC \== switch_especial,
    atom_concat(pc, _, PC).

%Consulta: pcs_red2(PC).
%Resultado: 
%PC = pc5 ; 
%PC = pc6 ; 
%PC = pc7.

%Regla para determinar que dispositivo pertenece a que red
pertenece_a_red(Dispositivo, Red) :-
    dispositivo(Dispositivo, Red, _).

%Consulta: pertenece_a_red(pc3, Red).
%Resultado: Red = red1.

%Consulta: pertenece_a_red(pc7, Red).
%Resultado: Red = red2.

%¿Puede el S1 enviar ping a la pc2?
puede_enviar_ping(Dispositivo1, Dispositivo2) :-
    conectado(Dispositivo1, Dispositivo2);
    conectado(Dispositivo2, Dispositivo1);
    (conectado(Dispositivo1, switch_especial), conectado(Dispositivo2, switch_especial)).

%Consulta: puede_enviar_ping(s1, pc2).
%Resultado: true. 

%Inventar una regla 
%Regla para verificar si un PC de la red1 puede comunicarse con un PC de la red2
pueden_comunicarse(PC1, PC2) :-
    pcs_red1(PC1),
    pcs_red2(PC2),
    (conectado(PC1, switch_especial);
    conectado(PC2, switch_especial)). 

%Consulta: pueden_comunicarse(pc3, pc5).
%Resultado: true.

%Inventar una regla con operaciones aritméticas
%Regla para calcular el doble de la velocidad de un dispositivo
velocidad_doble(Dispositivo, Doble) :-
    dispositivo(Dispositivo, _, Velocidad),
    Doble is Velocidad * 2.

%Consulta: velocidad_doble(pc1, Doble).
%Resultado: Doble = 2000.

%Inventar una regla con compraciones
%Regla para determinar si la velocidad es rápida o lenta si rapida es mayor o igual a 500 Mbps
velocidad_tipo(Dispositivo, Tipo) :-
    dispositivo(Dispositivo, _, Velocidad),
    (Velocidad >= 500 -> Tipo = 'Rápida';
    Tipo = 'Lenta').

%Consulta: velocidad_tipo(pc5, Tipo).
%Resultado: Tipo = 'Lenta'.

%Consulta: velocidad_tipo(pc1, Tipo).
%Resultado: Tipo = 'Rápida'.