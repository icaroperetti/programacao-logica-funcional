mulher(maria).
homem(joao).
homem(pedro).
homem(jose).
cachorro(pingo).
idade(maria,70).
idade(joao,17).
idade(pedro,7).
idade(jose,37).
idade(pingo,3).
mora(pedro,bairro).
mora(joao,centro).
mora(jose,fazenda).
mora(maria,villa).
mora(pingo,villa).
idoso(X) :- idade(X, I), I > 60, (mulher(X); homem(X)).
adolescente(X) :- idade(X, I), I < 18, I > 11, (mulher(X); homem(X)).
crianca(X) :- idade(X, I), I < 12, (mulher(X); homem(X)).
calmo(P,L) :- mora(P,L),(not(idoso(P)),not(adolescente(P)),not(crianca(P)),not(mulher(P)),not(cachorro(P))).
