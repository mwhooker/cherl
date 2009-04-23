%% @author author <author@example.com>
%% @copyright YYYY author.

%% @doc TEMPLATE.

-module(cherl).
-author('author <author@example.com>').
-export([start/0, stop/0]).

ensure_started(App) ->
    case application:start(App) of
        ok ->
            ok;
        {error, {already_started, App}} ->
            ok
    end.
        
%% @spec start() -> ok
%% @doc Start the cherl server.
start() ->
    cherl_deps:ensure(),
    ensure_started(crypto),
    application:start(cherl).

%% @spec stop() -> ok
%% @doc Stop the cherl server.
stop() ->
    Res = application:stop(cherl),
    application:stop(crypto),
    Res.
