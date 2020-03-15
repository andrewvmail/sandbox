-module(euler1).
-export([start/0]).
-include_lib("eunit/include/eunit.hrl").


% f() ->
%     {ok, 3}.

% f_test() ->
%     ?LET({ok, X}, f(), ?assertMatch( true, X>2 andalso X<4 ) ).

start() ->
    A = lists:seq(1, 100),
    Pred = fun(Y) ->  (Y rem 3 == 0) or (Y rem 5 == 0) end,
    A2 = lists:filter(Pred, A),
    A3 = lists:sum(A2),
    io:format("The value is: ~p", [A3]),
		% f_test(),
    io:fwrite("\nHellddd world...!\n").