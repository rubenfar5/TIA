:-dynamic(fact/1), [baseconhecimento].

/*  Menor custo < 450 */

/* caminho */
caminho(X,Z,Caminho):-caminho(X,Z,[X],Caminho).
caminho(X,X,Caminho,Caminho).
caminho(X,Z,Visitado,Caminho)
 :- percurso(X,Y),
 \+ member(Y,Visitado),
caminho(Y,Z,[Y | Visitado],Caminho).


/* caminho com menor custo */ 
caminhobarato(X,Y,C):-caminho(X,Y,C), 
 maisbarato(X,Y,C).  

maisbarato(X,Y,C):- custo_percurso(C,NC),!,
 \+ menorcusto(X,Y,NC).

menorcusto(X,Y,NC):- caminho(X,Y,C1),
 custo_percurso(C1,NC1),
 NC1<NC, NC1 <= 450.

/* custo do percurso */
custo_percurso([_],0).
custo_percurso([_,Y|Z],Total):- custo(Y, T1),
    custo_percurso([Y|Z],T2), Total is T1 + T2. 


/* caminho com menos distância */
caminhocurto(X,Y,C):-caminho(X,Y,C), 
 maiscurto(X,Y,C).  

maiscurto(X,Y,C):- distancia_percurso(C,NC),!,
 \+ menordistancia(X,Y,NC).

menordistancia(X,Y,NC):- caminho(X,Y,C1),
 distancia_percurso(C1,NC1),
 NC1<NC. 

/* distancia do percurso */
distancia_percurso([_],0).
distancia_percurso([X,Y|Z], Soma):- distancia(Y,X, S1),
 distancia_percurso([Y|Z],S2), Soma is S1 + S2.


/* trajeto */
trajeto(X,Y,T):- caminho(X,Y,T), melhor(X,Y,T).

melhor(X,Y,T):- solucao(T,MT,_,_),!,
    \+ otimizado(X,Y,MT).

/* melhor trajeto */ 
otimizado(X,Y,MT):- caminho(X,Y,T1),
    solucao(T1,MT1,_,_),
    MT1>MT.

/* solução */ 
solucao(T1,MT1,P,K):- custo_percurso(T1,K), distancia_percurso(T1,P), MT1 is P/K.

