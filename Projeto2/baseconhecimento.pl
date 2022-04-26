/* custo máximo 450€ */
/* COMEÇAR EM L1 E TERMINAR EM L2 */
/* PONTOS EXISTENTES - L1, L2, L3, L4, L5, L6, L7, L8*/

/* LIGAÇÕES */
percurso(l1, l8).
percurso(l1, l7).
percurso(l1, l6).
percurso(l1, l5).
percurso(l1, l3).
percurso(l8, l3).
percurso(l8, l7).
percurso(l7, l6).
percurso(l7, l2).     %CHEGOU 
percurso(l6, l2).     %CHEGOU
percurso(l5, l2).     %CHEGOU
percurso(l3, l4).     
percurso(l4, l2).     %CHEGOU

/* CUSTO ALOJAMENTO */
custo(l1, 50).
custo(l3, 240).
custo(l4, 150).
custo(l5, 400).
custo(l6, 70).
custo(l7, 30).
custo(l8, 100).

/* DISTÂNCIA ENTRE PONTOS */
distancia(l1, l8, 55).
distancia(l1, l7, 34).
distancia(l1, l6, 55).
distancia(l1, l5, 100).
distancia(l1, l3, 25).
distancia(l8, l3, 0).    %DISTANCIA????
distancia(l8, l7, 25).
distancia(l7, l6, 15).
distancia(l7, l2, 0).    %DISTANCIA????   
distancia(l6, l2, 30).     
distancia(l5, l2, 25).     
distancia(l3, l4, 40).     
distancia(l4, l2, 20).     