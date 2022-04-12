%perfil(zona,perfil)

membro(X, [X|_]).
membro(X, [_|R]):- membro(X, R).


procuraPraia(L):- membro(praia,L); membro(marina,L).

procuraNatureza(L):- membro(montanha,L); membro(rio,L); membro(mar,L); membro(lago,L); membro(miradouro,L).

procuraCultura(L):- membro(museu,L); membro(igreja,L); membro(teatro,L); membro(catedral,L); membro(mosteiro,L); membro(castelo,L); membro(santuario,L).


decisaoPreferencia(L,U):- (membro(praia, L), procuraPraia(U)); (membro(natureza, L), procuraNatureza(U)); (membro(cultura, L), procuraCultura(U)).
    					

sugestaoHotelPraia(L):- setof(Y,(resort(Y,_,_,_,_,_,_,U), decisaoPreferencia(L,U)),K), print(K).  