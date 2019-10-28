jloco:- write('{"jloco":'),ontologia,write('}').
ontologia:- write('{"ontologia":"'),read(X),  write(X), write('"'),objeto,write('}').
objeto:- read(X), write('{"objeto":"'), write(X), write('"'),atributo,write('}'). 
atributo:- read(X), write('{"'), write(X), write('":'),tipoatributo(X),write('}'). 
tipoatributo(M):- read(X), (X='metodo'->metodo(M); b1(X)).
b1(X):- X='numero'->numero; b2(X).
b2(X):- X='cadena'->cadena;write('error').
cadena:- read(X), write('"'), write(X), write('",').
numero:-read(X), write(X).
metodo(M):- write('"function() {'),a2,write('}'),write(' return '), write(M), write(';}"').
a2:- read(X), (X='decision'->decision;a3(X)).
a3(X):- X='asignacion' -> asignacion;(a4(X)).
a4(X):- X='fin' -> write('}');(write('ERROR: '),write(X)).
asignacion:- read(X), write(X), write('='), read(Y), write(Y), write(';'),a2.
decision:- write('if('),condicion,write(')'), verdadero,falso.
condicion:-read(X), write(X).
verdadero:- write('{'),a2.
falso:- write('else {'),a2.
:- jloco.



nbontologia.
nbobjeto.
clase.
metodo.
asignacion.
entrada.
parametro.
decision.
entrada=clase1.
asignacion.
clase.
clase1.
asignacion.
entrada.
nuevaentrada.
fin.
decision.
entrada=clase2.
asignacion.
clase.
clase2.
asignacion.
entrada.
nuevaentrada.
fin.
asignacion.
clase.
error.
fin.
