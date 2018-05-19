% Autor:
% Data: 19/05/2018

given(coleta,local(caminhaoO,q2)).
given(coleta,local(caminhaoS,q5)).


given(coleta,status(lS2,vazio)).
given(coleta,status(lS3,cheio)).
given(coleta,status(lS4,cheio)).
given(coleta,status(lS5,vazio)).
given(coleta,status(lO1,sujo)).
given(coleta,status(lO2,vazio)).
given(coleta,status(lO3,cheio)).
given(coleta,status(lO4,sujo)).
given(coleta,status(lO5,vazio)).

always(lixeira(lS2)).
always(lixeira(lS3)).
always(lixeira(lS4)).
always(lixeira(lS5)).
always(lixeira(lO1)).
always(lixeira(lO2)).
always(lixeira(lO3)).
always(lixeira(lO4)).
always(lixeira(lO5)).
always(caminhao(caminhaoO)).
always(caminhao(caminhaoS)).
always(caminhao(caminhaoL)).
always(local(caminhaoL,q7)).
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

imposs(local(X,Y)&local(X,Z)&notequal(Y,Z)).

can(go(C,L),caminhao(C)).
add(local(C, L), go(C,L)).


exerc1:-
    plans(local(caminhaoO,q3),coleta).