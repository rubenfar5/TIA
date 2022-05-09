:-dynamic(fact/2),
[baseconhecimento, objetivos].

menu :-
    write(
"
                  Ola, seja bem vindo!
                  Pretendemos ajudar a achar o caminho indicado para si, entre duas localizacoes.

"),nl,

write(
"____________________________________________________________________________________________________
 
                    Indique o seu ponto de partida

                    1- L1
                    2- L2
                    3- L3
                    4- L4
                    5- L5
                    6- L6
                    7- L7
                    8- L8
 
                    0- Sair 


___________________________________________________________________________________________________"),nl,nl,
    read(Q1),
        ((Q1 == 0), halt;
        (Q1 == 1), assert(variavel1(l1));
        (Q1 == 2), assert(variavel1(l2));
        (Q1 == 3), assert(variavel1(l3));
        (Q1 == 4), assert(variavel1(l4));
        (Q1 == 5), assert(variavel1(l5));
        (Q1 == 6), assert(variavel1(l6));
        (Q1 == 7), assert(variavel1(l7));
        (Q1 == 8), assert(variavel1(l8))), nl, 

write(
"____________________________________________________________________________________________________
 
                    Indique o seu ponto de chegada

                    1- L1
                    2- L2
                    3- L3
                    4- L4
                    5- L5
                    6- L6
                    7- L7
                    8- L8
 
                    0- Sair 


___________________________________________________________________________________________________"),nl,nl,
    read(Q2),
        ((Q2 == 0), halt;
        (Q2 == 1), assert(variavel2(l1));
        (Q2 == 2), assert(variavel2(l2));
        (Q2 == 3), assert(variavel2(l3));
        (Q2 == 4), assert(variavel2(l4));
        (Q2 == 5), assert(variavel2(l5));
        (Q2 == 6), assert(variavel2(l6));
        (Q2 == 7), assert(variavel2(l7));
        (Q2 == 8), assert(variavel2(l8))), nl,      

write(
"____________________________________________________________________________________________________
 
                    O que prefere?

                    1- Caminho mais curto
                    2- Caminho mais barato
                    3- Caminho com melhor custo/distancia
 
                    0- Sair 


___________________________________________________________________________________________________"),nl,nl,
    read(Q3),
        ((Q3 == 0), halt;
        (Q3 == 1), mostraResultadoCurto;
        (Q3 == 2), mostraResultadoBarato;
        (Q3 == 3), mostraResultadoOtimizado), nl, nl.


mostraResultadoCurto:-
write(
"___________________________________________________________________________________________________

                   Resultado Obtido:
___________________________________________________________________________________________________"),nl,nl,
    variavel1(Q1),
    variavel2(Q2),
    write('Local de partida: '),
    nl,
    write(Q1),
    nl,
    write('Local de chegada: '),
    nl,
    write(Q2),
    nl,
    nl,
    write('Melhor trajeto: '),
    nl,
    caminhocurto(Q1,Q2,T),
    print(T).

mostraResultadoBarato:-
write(
"___________________________________________________________________________________________________

                   Resultado Obtido:
___________________________________________________________________________________________________"),nl,nl,
    variavel1(Q1),
    variavel2(Q2),
    write('Local de partida: '),
    nl,
    write(Q1),
    nl,
    write('Local de chegada: '),
    nl,
    write(Q2),
    nl,
    nl,
    write('Melhor trajeto: '),
    nl,
    caminhobarato(Q1,Q2,T),
    print(T).

mostraResultadoOtimizado:-
write(
"___________________________________________________________________________________________________

                   Resultado Obtido:
___________________________________________________________________________________________________"),nl,nl,
    variavel1(Q1),
    variavel2(Q2),
    write('Local de partida: '),
    nl,
    write(Q1),
    nl,
    write('Local de chegada: '),
    nl,
    write(Q2),
    nl,
    nl,
    write('Melhor trajeto: '),
    nl,
    trajeto(Q1,Q2,T),
    print(T).