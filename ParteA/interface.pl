:-dynamic(fact/2),
[forward, basedados, baseconhecimento].

menu:- 
 write(
"
                  Ola, seja bem vindo!
                  Existimos para lhe sugerir o melhor resort para si.

"),nl,
  write(
"____________________________________________________________________________________________________
 
                    Antes de iniciar indique o seu nome:
___________________________________________________________________________________________________"),nl,nl,
    read(X), nl, 
   write(
"____________________________________________________________________________________________________
 
                  E um gosto poder ajudar,"), write(X),
 write(       
" 
                  Para descobrir qual o melhor destino de resort para si precisamos que responda a algumas perguntas
__________________________________________________________________________________________________________________________________

__________________________________________________________________________________________________________________________________

                    Qual a zona destino pretendida?

                    1- Algarve
                    2- Alentejo
                    3- Acores
                    4- Madeira
                    5- Centro
                    6- Norte

                    0- Sair

____________________________________________________________________________________________________"),nl,nl,
 read(R1),
        ((R1== 0), write('Foi um prazer ajuda-lo, volte sempre'), halt;
        (R1 == 1), assert(variavel('Algarve'));
        (R1 == 2), assert(variavel('Alentejo'));
        (R1 == 3), assert(variavel('Açores'));
        (R1 == 4), assert(variavel('Madeira'));
        (R1 == 4), assert(variavel('Centro'));
        (R1 == 5), assert(variavel('Norte'))), nl, 

write(
"____________________________________________________________________________________________________

                    E fa de gastronomia?

                    1- Sim, gosto de experimentar coisas novas
                    2- Nao, prefiro comida portuguesa

____________________________________________________________________________________________________"),nl,nl,
 read(R2),
        ((R2 == 1), assert(fact(fa_gastronomia));
        (R2 == 2), assert(fact(nao_fa_gastronomia))), nl, 

write(
"____________________________________________________________________________________________________

                    Tenciona praticar desporto durante a estadia?

                    1 - Sim, nao passo sem uma boa dose de exercicio
                    2 - Nao, prefiro descansar

____________________________________________________________________________________________________"),nl,nl,
 read(R3),
        ((R3 == 1), assert(fact(desportista));
        (R3 == 2), assert(fact(nao_desportista))), nl, 

write(
"____________________________________________________________________________________________________

                   O que prefere? (Selecione 2 opcoes)

                    1 - Natureza
                    2 - Praia
                    3 - Cultura

____________________________________________________________________________________________________"),nl,nl,
 read(R41),
  read(R42),
        ((R41 == 1), assert(fact(natureza));
        (R41 == 2), assert(fact(praia));
        (R41 == 3), assert(fact(cultura))), nl, 

        ((R42 == 1), assert(fact(natureza));
        (R42 == 2), assert(fact(praia));
        (R42 == 3), assert(fact(cultura))), nl, 

write(
"____________________________________________________________________________________________________

                   Tem animais de estimacao e esta a pensar leva-los consigo?

                    1 - Sim, nao largo o meu companheiro por nada
                    2 - Nao, nao tenho animal de estimacao / tenho onde o deixar

____________________________________________________________________________________________________"),nl,nl,
 read(R5),
        ((R5 == 1),  assert(fact(animais));
        (R5 == 2), assert(fact(nao_animais))), nl,

write(
"____________________________________________________________________________________________________

                   Resultado Obtido:
____________________________________________________________________________________________________"),nl,nl,
    result.

mostraResultado(P):- 
    variavel(R1),
    nl,
    write('O ser perfil: '),
    nl,
    nl,
    write(P),
    nl,
    nl,
    write('Resorts aconselhados: '),
    nl,
    nl,
    perfil(P,R1),
    nl,
    nl,
    retract(variavel(R1)), 
    retract(fact(_)).

%reposta([]):- write('').

%resposta([resort(Hotel, Preco_Noite, Localizacao, Tipo_Gastronomia, Estrelas, Classificacao)|R]):-
%write('///////////////////////////////////'),nl,
%write('Hotel: '), write(Hotel), nl,
%write('Preco_Noite: '), write(Preco_Noite), nl,
%write('Localizacao: '), write(Localizacao), nl,
%write('Tipo_Gastronomia: '), write(Tipo_Gastronomia), nl,
%write('Estrelas: '), write(Estrelas), nl,
%write('Classificacao: '), write(Classificacao), nl,
%write('///////////////////////////////////'),resposta(R).
