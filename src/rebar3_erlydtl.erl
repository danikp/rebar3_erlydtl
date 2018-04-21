-module(rebar3_erlydtl).

-export([init/1]).

-spec init(rebar_state:t()) -> {ok, rebar_state:t()}.
init(State) ->
    lists:foldl(fun provider_init/2, {ok, State}, [
        rebar3_erlydtl_compile
    ]).

provider_init(Module, {ok, State}) ->
    Module:init(State).
