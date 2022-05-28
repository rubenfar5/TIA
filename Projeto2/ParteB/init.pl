:-[search].

% -- database:
%   state representation: S, where S is a list with the full path followed by the person 
initial([l1]). % initial city

goal(X):- member(l1,X),member(l2,X). % destination city

% --- knowledge base:
% road(Origin,Destination,Distance-in-km)
% data collected from: https://pt.distance.to/
road(l1, l8, 55).
road(l1, l7, 34).
road(l1, l6, 55).
road(l1, l5, 100).
road(l1, l3, 25).
road(l8, l3, 0).    
road(l8, l7, 25).
road(l7, l6, 15).
road(l7, l2, 0).     
road(l6, l2, 30).     
road(l5, l2, 25).     
road(l3, l4, 40).     
road(l4, l2, 20).   

% travel(City1,City2,distance):
travel(X,Y,KM):-(road(X,Y,KM);road(Y,X,KM)). % true if road or symmetrical

% state transition rule s/2: s(City1,City2)
s(L1,L2):- last(L1,N1),travel(N1,N2,_),append(L1,[N2],L2). % link s(O,D,Dist) with s(O,D)

% evaluation function: (sum of distances for all pairs)
eval([_],1).
eval([City1,City2|R],DS):- 
	travel(City1,City2,D),
	eval([City2|R],DR),
	DS is D+DR.


% execute and show a search method result:
run(Method):- search(Method,Par,S),
	      write('method:'),write(Method),writepar(Par),nl,
              write('solution:'),write(S),nl,
	      length(S,N),N1 is N-1,write('solution steps:'),write(N1),nl,
              last(S,LS),
              eval(LS,T),write('distance:'),write(T).			  
% write parameter (if any):
writepar(X):- integer(X),write(' par:'),write(X). % write X
writepar(_). % do not write X

% execute 3 example searches:
q1:- run(depthfirst).
q2:- run(iterativedeepening).
q3:- run(breadthfirst).