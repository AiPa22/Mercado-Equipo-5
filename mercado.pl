atributo:- read(X), write('"'), write(X), write('":'),tipoatributo(X). 
tipoatributo(M):- read(X), (X='metodo'->metodo(M); b1(X)).
b1(X):- X='numero'->numero; b2(X).
b2(X):- X='cadena'->cadena;write('error').
cadena:- read(X), write('"'), write(X), write('",').
numero:-read(X), write(X).
metodo(M):- write('"function() {'),a2,write(' return '), write(M), write(';}"').
a2:- read(X), (X='decision'->decision;a3(X)).
a3(X):- X='asignacion' -> asignacion;(nl,nl,nl,write('ERROR AL INGRESAR: '),write(X),nl,nl,nl).
asignacion:- read(X), write(X), write('='), read(Y), write(Y), write(';').
decision:- write('if('),condicion,write(')'), verdadero.
condicion:-read(X), write(X).
verdadero:- write('{'),a2,write('}').
falso:- write('{'),a2,write('}').
:- atributo.
