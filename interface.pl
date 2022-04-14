:-dynamic(fact/2),
[forward, basedados, proof, baseconhecimento].


menu:- 
    nl,
    write('Bem vindo, existimos para lhe sugerir o melhor resort para si'), 
    nl,
    nl,
    write('Antes de iniciar, indique-nos o seu nome:'), 
    nl,
    nl,
    read(X), 
    nl,
    write('---------------------------------'), 
    nl, 
    nl,
    write('E um gosto poder ajudar, '), write(X), 
    nl, 
    nl,
    write('Para descobrir qual o melhor destino de resort para si precisamos que responda a algumas perguntas'),
    nl, 
    nl,
    write('---------------------------------'),    
    nl,
    write('-> Menu: '),
    nl,
    nl,
    write('> 1 - Iniciar'),
    nl,
    write('> 2 - Sair'),
    nl,
    nl,
    read(Y),
    (
        (Y == 1), questao1;
        (Y == 2), write('Foi um prazer ajuda-lo, volte sempre'), halt).


questao1:- 
    write('/////////////////////////////////////'), 
    nl,
    nl,
    write('-> Qual a zona de destino pretendida?'),
    nl,
    nl,
    write('> 1 - Algarve'),
    nl,
    write('> 2 - Alentejo'),
    nl,
    write('> 3 - Acores'),
    nl,
    write('> 4 - Madeira'),
    nl,
    write('> 5 - Centro'),
    nl,
    write('> 6 - Norte'),
    nl,
    nl,
    read(R1),
    (
        (R1 == 1), assert(variavel('Algarve')), questao2;
        (R1 == 2), assert(variavel('Alentejo')), questao2;
        (R1 == 3), assert(variavel('Açores')), questao2;
        (R1 == 4), assert(variavel('Madeira')), questao2;
        (R1 == 5), assert(variavel('Centro')), questao2;
        (R1 == 6), assert(variavel('Norte')), questao2).



questao2:- 
    write('/////////////////////////////////////'), 
    nl,
    nl,
    write('-> E fa de gastronomia?'),
    nl,
    nl,
    write('> 1 - Sim, gosto de experimentar coisas novas'),
    nl,
    write('> 2 - Nao, prefiro comida portuguesa'),
    nl,
    nl,
    read(R2),
    (
        (R2 == 1), assert(fact(fa_gastronomia)), questao3;
        (R2 == 2), assert(fact(nao_fa_gastronomia)), questao3).


questao3:- 
    write('/////////////////////////////////////'), 
    nl,
    nl,
    write('-> Tenciona praticar desporto durante a estadia?'),
    nl,
    nl,
    write('> 1 - Sim, nao passo sem uma boa dose de exercicio'),
    nl,
    write('> 2 - Nao, prefiro descansar'),
    nl,
    nl,
    read(R3),
    (
        (R3 == 1), assert(fact(desportista)), questao4;
        (R3 == 2), assert(fact(nao_desportista)), questao4).


questao4:- 
    write('/////////////////////////////////////'), 
    nl,
    nl,
    write('-> O que prefere? (Selecione 2 opcoes)'),
    nl,
    nl,
    write('> 1 - Natureza'),
    nl,
    write('> 2 - Praia'),
    nl,
    write('> 3 - Cultura'),
    nl,
    nl,
    read(R41),
    read(R42),
    (
        (R41 == 1), assert(fact(natureza));
        (R41 == 2), assert(fact(praia));
        (R41 == 3), assert(fact(cultura))
    ),
    (
        (R42 == 1), assert(fact(natureza)), questao5;
        (R42 == 2), assert(fact(praia)), questao5;
        (R42 == 3), assert(fact(cultura)), questao5).

questao5:- 
    write('/////////////////////////////////////'), 
    nl,
    nl,
    write('-> Tem animais de estimacao e esta a pensar leva-los consigo?'),
    nl,
    nl,
    write('> 1 - Sim, nao largo o meu companheiro por nada'),
    nl,
    write('> 2 - Nao, nao tenho animal de estimacao / tenho onde o deixar'),
    nl,
    nl,
    read(R5),
    (
        (R5 == 1), assert(fact(animais)), sugestao;
        (R5 == 2), assert(fact(nao_animais)), sugestao).

sugestao:- 
    write('***********************************'),
    nl,
    write(' Resultado obtido'),
    nl,
    write('***********************************'),
    nl,
    result.

mostraResultado(P):- 
    variavel(R1),
    nl,
    write('O ser perfil: '),
    nl,
    write(P),
    nl,
    nl,
    write('Resorts aconselhados: '),
    perfil(P,R1),
    nl,
    nl,
    retract(variavel(R1)), 
    retract(fact(_)).