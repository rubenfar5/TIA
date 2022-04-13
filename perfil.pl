membro(X, [X|_]).
membro(X, [_|R]):- membro(X, R).

%Praia, cultura ou natureza?

procuraPraia(L):- membro(praia,L); membro(marina,L).

procuraNatureza(L):- membro(montanha,L); membro(rio,L); membro(mar,L); membro(lago,L); membro(miradouro,L).

procuraCultura(L):- membro(museu,L); membro(igreja,L); membro(teatro,L); membro(catedral,L); membro(mosteiro,L); membro(castelo,L); membro(santuario,L).

decisaoPreferencia(L,U):- (membro(praia, L), procuraPraia(U)); (membro(natureza, L), procuraNatureza(U)); (membro(cultura, L), procuraCultura(U)).
    					
sugestaoHotel(L):- setof(Y,(resort(Y,_,_,_,_,_,_,U), decisaoPreferencia(L,U)),K), print(K).


%localização

listarHoteisRegiao(N):- setof(Y,(resort(Y,_,L,_,_,_,_,_), membro(N,L)),K), print(K).


%Tenciona levar animais

procuraAnimais(L):- membro('animais admitidos',L).

preferenciaAnimal(L,A):- (membro(animais, L), procuraAnimais(A)); (membro(nao_animais,L), true).

animaisHotel(L):- setof(Y,(resort(Y,_,_,_,_,_,A,_), preferenciaAnimal(L,A)),K), print(K).


%Gatronomia

procuraComida(L):- membro(europeia,L); membro(italiana,L); membro(mediterranica,L); membro(espanhola,L); membro('local',L); membro(internacional,L); membro(latino-americana,L); membro(marisco,L); membro(steakhouse,L); membro(pizza,L); membro(asiatica,L); membro(saudavel,L); membro(churrasco,L); membro(brasileira,L); membro(inglesa,L).

preferenciaComida(L,A):- (membro(fa_gastronomia, L), procuraComida(A)); (membro(nao_fa_gastronomia,L), true).

gastronomiaHotel(L):- setof(Y,(resort(Y,_,_,A,_,_,_,_), preferenciaComida(L,A)),K), print(K).


%Desporto

procuraDesporto(L):- membro('atividades desportivas',L); membro('centro fitness',L).

preferenciaDesporto(L,A):- (membro(desportista, L), procuraDesporto(A)); (membro(nao_desportista,L), true).

atividadesHotel(L):- setof(Y,(resort(Y,_,_,_,_,_,A,_), preferenciaDesporto(L,A)),K), print(K).


verResort(N,G,D,PCN,A):- setof(Y,(resort(Y,_,L,G1,_,_,AD,PCN1), membro(N,L), decisaoPreferencia(PCN,PCN1),  preferenciaAnimal(A,AD), preferenciaComida(G,G1), preferenciaDesporto(D,AD)),K), print(K).
verResort(G,D,PCN,A):- setof(Y,(resort(Y,_,_,G1,_,_,AD,PCN1), decisaoPreferencia(PCN,PCN1), preferenciaAnimal(A,AD), preferenciaComida(G,G1), preferenciaDesporto(D,AD)),K), print(K).                               
%verResort(2, [fa_gastronomia], [desportista], [praia, cultura], [animais]).


perfil(perfil_1,L):- verResort(L, [fa_gastronomia], [desportista], [natureza, cultura], [animais]).
perfil(perfil_2,L):- verResort(L, [fa_gastronomia], [desportista], [natureza, cultura], [nao_animais]).
perfil(perfil_3,L):- verResort(L, [fa_gastronomia], [desportista], [natureza, praia], [animais]).
perfil(perfil_4,L):- verResort(L, [fa_gastronomia], [desportista], [natureza, praia], [nao_animais]).
perfil(perfil_5,L):- verResort(L, [fa_gastronomia], [desportista], [praia, cultura], [animais]).
perfil(perfil_6,L):- verResort(L, [fa_gastronomia], [desportista], [praia, cultura], [nao_animais]).
perfil(perfil_7,L):- verResort(L, [fa_gastronomia], [nao_desportista], [natureza, cultura], [animais]).
perfil(perfil_8,L):- verResort(L, [fa_gastronomia], [nao_desportista], [natureza, cultura], [nao_animais]).
perfil(perfil_9,L):- verResort(L, [fa_gastronomia], [nao_desportista], [natureza, praia], [animais]).
perfil(perfil_10,L):- verResort(L, [fa_gastronomia], [nao_desportista], [natureza, praia], [nao_animais]).
perfil(perfil_11,L):- verResort(L, [fa_gastronomia], [nao_desportista], [praia, cultura], [animais]).
perfil(perfil_12,L):- verResort(L, [fa_gastronomia], [nao_desportista], [praia, cultura], [nao_animais]).
perfil(perfil_13,L):- verResort(L, [nao_fa_gastronomia], [desportista], [natureza, cultura], [animais]).
perfil(perfil_14,L):- verResort(L, [nao_fa_gastronomia], [desportista], [natureza, cultura], [nao_animais]).
perfil(perfil_15,L):- verResort(L, [nao_fa_gastronomia], [desportista], [natureza, praia], [animais]).
perfil(perfil_16,L):- verResort(L, [nao_fa_gastronomia], [desportista], [natureza, praia], [nao_animais]).
perfil(perfil_17,L):- verResort(L, [nao_fa_gastronomia], [desportista], [praia, cultura], [animais]).
perfil(perfil_18,L):- verResort(L, [nao_fa_gastronomia], [desportista], [praia, cultura], [nao_animais]).
perfil(perfil_19,L):- verResort(L, [nao_fa_gastronomia], [nao_desportista], [natureza, cultura], [animais]).
perfil(perfil_20,L):- verResort(L, [nao_fa_gastronomia], [nao_desportista], [natureza, cultura], [nao_animais]).
perfil(perfil_21,L):- verResort(L, [nao_fa_gastronomia], [nao_desportista], [natureza, praia], [animais]).
perfil(perfil_22,L):- verResort(L, [nao_fa_gastronomia], [nao_desportista], [natureza, praia], [nao_animais]).
perfil(perfil_23,L):- verResort(L, [nao_fa_gastronomia], [nao_desportista], [praia, cultura], [animais]).
perfil(perfil_24,L):- verResort(L, [nao_fa_gastronomia], [nao_desportista], [praia, cultura], [nao_animais]).
