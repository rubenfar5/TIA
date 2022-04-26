%forward chaining

:- op( 800, fx, if).
:- op( 700, xfx, then).
:- op( 300, xfy, or).
:- op( 500, xfy, and).

result:- new_derived_fact(P),             
   !,
   mostraResultado(P), nl,
   assert(fact(P)),
   result.
                           
result:- nl,write( 'Esperemos que goste da recomendacao, disfrute') .             

new_derived_fact( Concl):-
 if Cond then Concl, 
 \+ fact( Concl),
 composed_fact( Cond). 

composed_fact( Cond) :-
 fact( Cond).

composed_fact( Cond1 and Cond2) :-
 composed_fact( Cond1),
 composed_fact( Cond2). 

composed_fact( Cond1 or Cond2) :-
 composed_fact( Cond1)
 ;
 composed_fact( Cond2).


% result( P, Proof) Proof is a proof that P is true

:- op( 800, fx, if).
:- op( 700, xfx, then).
:- op( 300, xfy, or).
:- op( 500, xfy, and).
:- op( 800, xfx, <=).

result( P, P)  :-
   fact( P).

result( P, P <= CondProof)  :-
   if Cond then P,
   result( Cond, CondProof).

result( P1 and P2, Proof1 and Proof2)  :-
   result( P1, Proof1),
   result( P2, Proof2).

result( P1 or P2, Proof)  :-
   result( P1, Proof);
   result( P2, Proof).