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

```