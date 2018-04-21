rebar3 ErlyDTL plugin
=====

A rebar plugin

Build
-----

    $ rebar3 compile

Use
---

Add the plugin to your rebar config:

    {plugins, [
        {rebar3_erlydtl, ".*", {git, "https://github.com/danikp/rebar3_erlydtl.git", {branch, "master"}}}
    ]}.

Then just call your plugin directly in an existing application:


    $ rebar3 erlydtl compile
    ===> Fetching rebar3_erlydtl
    ===> Compiling rebar3_erlydtl

To have it invoked automatically when running `rebar3 compile` add it as a `provider_hooks`:

```
{provider_hooks, [
    {pre, [{compile, {erlydtl, compile}}]}
]}.
```
