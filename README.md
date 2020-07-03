# [WIP] Phx Test Mock

To start your Phoenix server:

- Setup the project with `mix setup`
- Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Version

```terminal
$ mix phx.new -v
Phoenix v1.5.1
```

---

# Prepare Project

```elixir
$ mix phx.new phx_test_hoge

$ mix phx.gen.html Accounts User users name:string email:string:unique password:string

$ mix ecto.create

$ mix ecto.migrate
```

- NOTE

  マイグレート前に `pg_ctl start` 要

## Preview (ON GOING)

<img width="834" alt="image" src="https://user-images.githubusercontent.com/33124627/86420327-3042cf80-bd11-11ea-862a-13b6e71b2127.png">
