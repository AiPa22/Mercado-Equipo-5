objeto:-read(X), write('"'), write(X), write('":{'), atributo.
atributo:- read(X), write('"'), write(X), write('":'),tipoatributo(X). 
tipoatributo(M):- read(X), (X='metodo'->metodo(M); b1(X)).
b1(X):- X='numero'->numero; b2(X).
b2(X):- X='cadena'->cadena;b3(X).
b3(X):- X='obj'->obj;write('error').
obj:- read(X), write('"'),write(X),write('"').
cadena:- read(X), write('"'), write(X), write('",').
numero:-read(X), write(X).
metodo(M):- write('"function() {'),a2,write(' return '), write(M), write(';}"').
a2:- read(X), (X='decision'->decision;a3(X)).
a3(X):- X='asignacion' -> asignacion;(a4(X)).
a4(X):- X='fin' -> write('}');(write('ERROR: '),write(X)).
asignacion:- read(X), write(X), write('='), read(Y), write(Y), write(';'),a2.
decision:- write('if('),condicion,write(')'), verdadero,falso.
condicion:-read(X), write(X).
verdadero:- write('{'),a2.
falso:- write('else {'),a2.
:- objeto.
