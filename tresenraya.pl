% Definicion del tablero de juego 3x3
tablero([[vacio, vacio, vacio], [vacio, vacio, vacio], [vacio, vacio, vacio]]).

% Definicion de los jugadores
jugador(x).
jugador(o).

% Definicion de los turnos
turno(x).
turno(o).

% Definicion de las condiciones de victoria
victoria(Tablero, Jugador) :- Tablero = [[Jugador, Jugador, Jugador], _, _].
victoria(Tablero, Jugador) :- Tablero = [_, [Jugador, Jugador, Jugador], _].
victoria(Tablero, Jugador) :- Tablero = [_, _, [Jugador, Jugador, Jugador]].
victoria(Tablero, Jugador) :- Tablero = [[Jugador, _, _], [Jugador, _, _], [Jugador, _, _]].
victoria(Tablero, Jugador) :- Tablero = [[_, Jugador, _], [_, Jugador, _], [_, Jugador, _]].
victoria(Tablero, Jugador) :- Tablero = [[_, _, Jugador], [_, _, Jugador], [_, _, Jugador]].
victoria(Tablero, Jugador) :- Tablero = [[Jugador, _, _], [_, Jugador, _], [_, _, Jugador]].
victoria(Tablero, Jugador) :- Tablero = [[_, _, Jugador], [_, Jugador, _], [Jugador, _, _]].

% Definicion de las condiciones de empate
empate(Tablero) :-
    tablero_lleno(Tablero),
    not(victoria(Tablero, _)).

% Verificacion de que el tablero este lleno
tablero_lleno([]).
tablero_lleno([Fila|Resto]) :-
    fila_llena(Fila),
    tablero_lleno(Resto).

fila_llena([]).
fila_llena([Casilla|Resto]) :-
    Casilla \= vacio,
    fila_llena(Resto).

% Definicion de movimiento valido utilizando nth1 para acceder a la fila y columna y despues comprobar que la casilla este vacia
movimiento_valido(Tablero, Fila, Columna) :-
    nth1(Fila, Tablero, FilaTablero),
    nth1(Columna, FilaTablero, Casilla),
    Casilla = vacio.

