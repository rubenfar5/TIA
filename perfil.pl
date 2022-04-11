%perfil(zona,perfil)

membro(X, [X|_]).
membro(X, [_|R]):- membro(X, R).
