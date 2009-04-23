{application, cherl,
 [{description, "cherl"},
  {vsn, "0.01"},
  {modules, [
    cherl,
    cherl_app,
    cherl_sup,
    cherl_web,
    cherl_deps
  ]},
  {registered, []},
  {mod, {cherl_app, []}},
  {env, []},
  {applications, [kernel, stdlib, crypto]}]}.
