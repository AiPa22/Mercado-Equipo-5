jproba:-write('{"jproba":'),arbol, write('}').
 arbol:-write('{"nbarbol":"'),read(Nbarbol),write(Nbarbol),write('", "frecuencia":'),frecuencia(Nbarbol), write('}').
 frecuencia(Nbarbol):-write('"select count(*) from '),write(Nbarbol),write(';"'),write(','),dimension(Nbarbol).
 dimension(Nbarbol):-write('{"nbdimension":"'),read(Nbdimension),write(Nbdimension),write('",'),puerta(Nbarbol,Nbdimension).
 puerta(Nbarbol,Nbdimension):-write('"select '),write(Nbdimension),write(', '),write('count(*)/(select count(*)from '),write(Nbarbol),write(') from '),write(Nbarbol),write(' where '),write(Nbdimension),write(' in(select distinct '),write(Nbdimension),write(' from '),write(Nbarbol),write(') group by '),write(Nbdimension),write(';"'),write(','),dimension2(Nbarbol,Nbdimension).
dimension2(Nbarbol,Nbdimension):-write('{"nbdimension2":"'),read(Nbdimension2),write(Nbdimension2),write('",'),puerta2(Nbarbol,Nbdimension,Nbdimension2).
puerta2(Nbarbol,Nbdimension,Nbdimension2):-write('"select '),write(Nbdimension2),write(','),write(Nbdimension),write(', '),write('count(*)/(select count(*)from '),write(Nbarbol),write(') from '),write(Nbarbol),write(' where '),write(Nbdimension),write(' in(select distinct '),write(Nbdimension),write(' from '),write(Nbarbol),write(') and '),write(Nbdimension2),write(' in(select distinct '),write(Nbdimension2),write(' from '),write(Nbarbol),write(') group by '),write(Nbdimension),write(','),write(Nbdimension2),write(' order by '),write(Nbdimension),write(';"').
 :-jproba.

