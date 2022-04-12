%perfil(zona,perfil)

membro(X, [X|_]).
membro(X, [_|R]):- membro(X, R).

% Praia, cultura ou natureza?
procuraPraia(L):- membro(praia,L); membro(marina,L).

procuraNatureza(L):- membro(montanha,L); membro(rio,L); membro(mar,L); membro(lago,L); membro(miradouro,L).

procuraCultura(L):- membro(museu,L); membro(igreja,L); membro(teatro,L); membro(catedral,L); membro(mosteiro,L); membro(castelo,L); membro(santuario,L).


decisaoPreferencia(L,U):- (membro(praia, L), procuraPraia(U)); (membro(natureza, L), procuraNatureza(U)); (membro(cultura, L), procuraCultura(U)).
    					

sugestaoHotel(L):- setof(Y,(resort(Y,_,_,_,_,_,_,U), decisaoPreferencia(L,U)),K), print(K).

%localização
listarHoteisRegiao(N):- setof(Y,(resort(Y,_,L,_,_,_,_,_), membro(N,L)),K), print(K).

%Tenciona levar animais

procuraAnimais(L):- membro('animais admitidos',L).

preferenciaAnimal(L,A):- (membro(sim, L), procuraAnimais(A)).

animaisHotel(L):- setof(Y,(resort(Y,_,_,_,_,_,A,_), preferenciaAnimal(L,A)),K), print(K).

%Gatronomia

procuraComida(L):- membro(europeia,L); membro(italiana,L); membro(mediterranica,L); membro(espanhola,L); membro('local',L); membro(internacional,L); membro(latino-americana,L); membro(marisco,L); membro(steakhouse,L); membro(pizza,L); membro(asiatica,L); membro(saudavel,L); membro(churrasco,L); membro(brasileira,L); membro(inglesa,L).

preferenciaComida(L,A):- (membro(fa, L), procuraComida(A)).

gastronomiaHotel(L):- setof(Y,(resort(Y,_,_,A,_,_,_,_), preferenciaComida(L,A)),K), print(K).

%Desporto

procuraDesporto(L):- membro('atividades desportivas',L); membro('centro fitness',L).

preferenciaDesporto(L,A):- (membro(desportista, L), procuraDesporto(A)).

atividadesHotel(L):- setof(Y,(resort(Y,_,_,_,_,_,A,_), preferenciaDesporto(L,A)),K), print(K).




