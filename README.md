## How to reproduce

```bash
cd acme
erl -s inets -eval 'inets:start(httpd,[{port,8000},{server_name,"localhost"},{server_root,"."},{document_root,"public"}]).'
```

In another terminal

```bash
cd app_umbrella
mix hex.repo add acme http://localhost:8000 --public-key=../acme/public/public_key
mix deps.get --only e2e
```

Results in:

```bash
Resolving Hex dependencies...
Resolution completed in 0.007s
Unchanged:
  dep_b 0.1.0
* Getting dep_b (Hex package)
* Getting dep_a (Hex package)
** (exit) exited in: GenServer.call(:hex_fetcher, {:await, {:tarball, "acme", "dep_a", "0.1.0"}}, 120000)
    ** (EXIT) time out
    (elixir 1.17.0-dev) lib/gen_server.ex:1110: GenServer.call/3
    (hex 2.0.6) lib/hex/scm.ex:128: Hex.SCM.update/1
    (hex 2.0.6) lib/hex/scm.ex:227: Hex.SCM.checkout/1
    (mix 1.17.0-dev) lib/mix/dep/fetcher.ex:64: Mix.Dep.Fetcher.do_fetch/3
    (mix 1.17.0-dev) lib/mix/dep/converger.ex:229: Mix.Dep.Converger.all/8
    (mix 1.17.0-dev) lib/mix/dep/converger.ex:162: Mix.Dep.Converger.init_all/8
    (mix 1.17.0-dev) lib/mix/dep/converger.ex:146: Mix.Dep.Converger.all/4
    (mix 1.17.0-dev) lib/mix/dep/converger.ex:89: Mix.Dep.Converger.converge/4
```
