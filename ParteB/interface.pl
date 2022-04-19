% Paulo Cortez 2021@
% Anabela Marin, Mariana Gomes, Ruben Faria (2022)

:-[satisfy, induce_ifthen, atributos, destino_ifthen].

% the goal is to classify 
learn_rules:-
	learn(sim),  % negative examples
	learn(nao), % positive examples
        % save new rules:
	tell('destino_ifthen.pl'),
	listing(<==),
	told.

resultado(Class):- findall(A,fact(A),Z), classify(Z,Class), retractall(fact(_)).

menu :-
    write(
"
                  Ola, seja bem vindo!
                  Sera que a ilha e o destino ideal para si? Vamos verificar.
                  Seja bem-vindo ao sistema de recomendacao! Esperamos corresponder as suas expetativas *_*

"),nl,

    write(
"____________________________________________________________________________________________________
 
                    Indique a sua idade

                    1- 16 a 20
                    2- 21 a 30
                    3- 31 a 44
                    4- 45 a 64
                    5- 65 +
 
                    0- Sair 


___________________________________________________________________________________________________"),nl,nl,
    read(Q1),
        ((Q1 == 0), halt;
        (Q1 == 1), assert(fact(faixa_etaria=entre_16_20));
        (Q1 == 2), assert(fact(faixa_etaria=entre_21_30));
        (Q1 == 3), assert(fact(faixa_etaria=entre_31_44));
        (Q1 == 4), assert(fact(faixa_etaria=entre_45_64));
        (Q1 == 5), assert(fact(faixa_etaria=mais_que_65))), nl, 
        

    write(
"____________________________________________________________________________________________________
 
                    Tenciona praticar desporto durante as suas ferias?

                    1- Sim
                    2- Nao
 
                    0- Sair 


____________________________________________________________________________________________________"),nl,nl,
    read(Q2),
        ((Q2 == 0), halt;
        (Q2 == 1), assert(fact(desporto=sim));
        (Q2 == 2), assert(fact(desporto=nao))), nl, 

    write(
"____________________________________________________________________________________________________
 
                    Qual a sua preferencia? 

                    1- Natureza
                    2- Praia
                    3- Cultura
 
                    0- Sair 


____________________________________________________________________________________________________"),nl,nl,
    read(Q3),
        ((Q3 == 0), halt;
        (Q3 == 1), assert(fact(preferencia=natureza));
        (Q3 == 2), assert(fact(preferencia=praia));
        (Q3 == 3), assert(fact(preferencia=cultura))), nl, 

    write(
"____________________________________________________________________________________________________

                    Qual o seu orçamento (por noite) para estas ferias?

                    1- menos de 200 euros
                    2- 201 a 400 euros
                    3- 401 a 600 euros
                    4- mais de 600 euros
 
                    0- Sair 


____________________________________________________________________________________________________"),nl,nl,
    read(Q4),
        ((Q4 == 0), halt;
        (Q4 == 1), assert(fact(gasto_noite=menos_200));
        (Q4 == 2), assert(fact(gasto_noite=entre_201_400));
        (Q4 == 3), assert(fact(gasto_noite=entre_401_600));
        (Q4 == 4), assert(fact(gasto_noite=mais_que_600))), nl,

    write(
"____________________________________________________________________________________________________

                    Qual a classificacao minima do alojamento para a sua estadia?

                    1- Classificacao minima 1
                    2- Classificacao minima 2
                    3- Classificacao minima 3
                    4- Classificacao minima 4
                    5- Classificacao minima 5
                    6- Classificacao minima 6
                    7- Classificacao minima 7
                    8- Classificacao minima 8
                    9- Classificacao minima 9
                    10- Classificacao minima 10
 
                    0- Sair 


____________________________________________________________________________________________________"),nl,nl,
    read(Q5),
        ((Q5 == 0), halt;
        (Q5 == 1), assert(fact(minimo_classificacao=1));
        (Q5 == 2), assert(fact(minimo_classificacao=2));
        (Q5 == 3), assert(fact(minimo_classificacao=3));
        (Q5 == 4), assert(fact(minimo_classificacao=4));
        (Q5 == 5), assert(fact(minimo_classificacao=5));
        (Q5 == 6), assert(fact(minimo_classificacao=6));
        (Q5 == 7), assert(fact(minimo_classificacao=7));
        (Q5 == 8), assert(fact(minimo_classificacao=8));
        (Q5 == 9), assert(fact(minimo_classificacao=9));
        (Q5 == 10), assert(fact(minimo_classificacao=10))), nl,

write("____________________________________________________________________________________________________"),nl,nl,

 write('RESULTADO'),nl, 

resultado(C),

 write('Para o seu perfil aconselhamos ilhas: '), write(C),nl,nl,

 

 write("Disfrute da sua viagem! Obrigado!"),nl.