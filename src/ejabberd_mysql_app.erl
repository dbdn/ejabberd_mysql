-module(ejabberd_mysql_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
    Sup =  ejabberd_mysql_sup:start_link(),
    ejabberd_rdbms:start(),
    Sup.

stop(_State) ->
    ok.
