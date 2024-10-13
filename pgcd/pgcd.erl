-module(pgcd).
-export([main/1]).

-spec pgcd(integer(), integer()) -> integer().
pgcd(P, 0) -> P;
pgcd(P, Q) -> pgcd(Q, P rem Q).

affiche_pgcd(P, Q) ->
  io:format("PGCD = ~p~n", [pgcd(P, Q)]).

main([]) ->
  affiche_pgcd(48, 18),
  affiche_pgcd(48.0, 18.0),
  affiche_pgcd(48.0 + 0.3 - 0.1 - 0.2, 18.0).
