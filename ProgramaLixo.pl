% Autor:
% Data: 19/05/2018

given(coleta,local(caminhaoO,q2)).
given(coleta,local(caminhaoS,q5)).
given(coleta,local(caminhaoL,q7)).
given(coleta,status(cidade,suja)).


given(coleta,status(caminhaoO,cheio)).
given(coleta,status(caminhaoS,cheio)).
given(coleta,status(lS1,cheio)).
given(coleta,status(lS2,cheio)).
given(coleta,status(lS3,cheio)).
given(coleta,status(lS4,sujo)).
given(coleta,status(lO1,cheio)).
given(coleta,status(lO2,cheio)).
given(coleta,status(lO3,cheio)).
given(coleta,status(lO4,sujo)).
given(coleta,status(lO5,cheio)).
given(coleta,status(cidade,sujo)).

always(lixeira(lS1)).
always(lixeira(lS2)).
always(lixeira(lS3)).
always(lixeira(lS4)).
always(lixeira(lO1)).
always(lixeira(lO2)).
always(lixeira(lO3)).
always(lixeira(lO4)).
always(lixeira(lO5)).
always(caminhao(caminhaoO)).
always(caminhao(caminhaoS)).
always(caminhao(caminhaoL)).
always(cidade(caxias)).
always(tipo(lS1,seletivo)).
always(tipo(lS2,seletivo)).
always(tipo(lS3,seletivo)).
always(tipo(lS4,seletivo)).
always(tipo(lO1,organico)).
always(tipo(lO2,organico)).
always(tipo(lO3,organico)).
always(tipo(lO4,organico)).
always(tipo(lO5,organico)).
always(tipo(caminhaoO,organico)).
always(tipo(caminhaoS,seletivo)).
always(tipo(caminhaoL,lava)).
always(local(lS1,q1)).
always(local(lS2,q3)).
always(local(lS3,q4)).
always(local(lS4,q7)).
always(local(lO1,q1)).
always(local(lO2,q2)).
always(local(lO3,q3)).
always(local(lO4,q6)).
always(local(lO5,q7)).
always(status(caminhaoL,vazio)).

imposs(local(X,Y)&local(X,Z)&notequal(Y,Z)).

can(esvaziar(C), caminhao(C)&status(C,cheio)&local(C,q0)).
add(status(C,vazio), esvaziar(C)).
del(status(C,cheio), esvaziar(C)).

can(recolher(C,L), lixeira(L)&status(L,cheio)&tipo(L,T)&tipo(C,T)&caminhao(C)&local(L,X)&local(C,X)).
add(status(L,sujo), recolher(_,L)).
del(status(L,cheio), recolher(_,L)).
add(status(C,cheio), recolher(_,L)).
del(status(C,vazio), recolher(_,L)).

can(limpar(C,L), lixeira(L)&status(L,sujo)&tipo(C,lava)&local(L,X)&local(C,X)).
add(status(L,vazio), limpar(_,L)).
del(status(L,sujo), limpar(_,L)).

can(finalizarRota(C), cidade(C)&status(lS1,vazio)&status(lS2,vazio)&status(lS3,vazio)&status(lS4,vazio)&status(lO1,vazio)&status(lO2,vazio)&status(lO3,vazio)&status(lO4,vazio)&status(lO5,vazio)&status(caminhaoO,vazio)&status(caminhaoS,vazio)).
add(status(C,limpo), finalizarRota(C)).
del(status(C,sujo), finalizarRota(C)).

can(go(C,q1),local(C,q0)&caminhao(C)&status(C,vazio)).
add(local(C, q1), go(C,q1)).
del(local(C, q0), go(C,q1)).
can(go(C,q2),local(C,q1)&caminhao(C)).
add(local(C, q2), go(C,q2)).
del(local(C, q1), go(C,q2)).
can(go(C,q3),local(C,q2)&caminhao(C)).
add(local(C, q3), go(C,q3)).
del(local(C, q2), go(C,q3)).
can(go(C,q4),local(C,q3)&caminhao(C)).
add(local(C, q4), go(C,q4)).
del(local(C, q3), go(C,q4)).
can(go(C,q5),local(C,q4)&caminhao(C)).
add(local(C, q5), go(C,q5)).
del(local(C, q4), go(C,q5)).
can(go(C,q6),local(C,q5)&caminhao(C)).
add(local(C, q6), go(C,q6)).
del(local(C, q5), go(C,q6)).
can(go(C,q7),local(C,q6)&caminhao(C)).
add(local(C, q7), go(C,q7)).
del(local(C, q6), go(C,q7)).
can(go(C,q0),local(C,q7)&caminhao(C)).
add(local(C, q0), go(C,q0)).
del(local(C, q7), go(C,q0)).

exerc1:-
    plans(recolher(caminhaoO,lO3)&recolher(caminhaoO,lO3),coleta).