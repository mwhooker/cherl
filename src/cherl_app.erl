%% @author Matthew Hooker <mwhooker@gmail.com>
%% @copyright 2009 Matthew Hooker.

%% @doc Callbacks for the cherl application.

-module(cherl_app).
-author('Matthew Hooker <mwhooker@gmail.com>').

-behaviour(application).
-export([start/2,stop/1]).


%% @spec start(_Type, _StartArgs) -> ServerRet
%% @doc application start callback for cherl.
start(_Type, _StartArgs) ->
    cherl_deps:ensure(),
    cherl_sup:start_link().

%% @spec stop(_State) -> ServerRet
%% @doc application stop callback for cherl.
stop(_State) ->
    ok.
