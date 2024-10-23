%Definicion del tablero de juego 3x3
tablero([[_ , _ , _], [_ , _ , _], [_ , _ , _]]).

%Definicion de los jugadores
jugador(x).
jugador(o).

%Definicion de los turnos
turno(x).
turno(o).

%Definicion de las condiciones de victoria
victoria(Tablero, Jugador) :- Tablero = [[Jugador, Jugador, Jugador], _, _].
victoria(Tablero, Jugador) :- Tablero = [_, [Jugador, Jugador, Jugador], _].
victoria(Tablero, Jugador) :- Tablero = [_, _, [Jugador, Jugador, Jugador]].
victoria(Tablero, Jugador) :- Tablero = [[Jugador, _, _], [Jugador, _, _], [Jugador, _, _]].
victoria(Tablero, Jugador) :- Tablero = [[_, Jugador, _], [_, Jugador, _], [_, Jugador, _]].
victoria(Tablero, Jugador) :- Tablero = [[_, _, Jugador], [_, _, Jugador], [_, _, Jugador]].
victoria(Tablero, Jugador) :- Tablero = [[Jugador, _, _], [_, Jugador, _], [_, _, Jugador]].
victoria(Tablero, Jugador) :- Tablero = [[_, _, Jugador], [_, Jugador, _], [Jugador, _, _]].

