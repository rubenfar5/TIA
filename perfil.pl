procura_array(X, [X|_]).
procura_array(X, [_|R]):- procura_array(X, R).
