# HelloWorldPhoenix

## Step by step guide with asdf

* Install [asdf](https://asdf-vm.com/guide/getting-started.html).

* Add asdf erlang plugin:

```shell
asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git
```

* Add asdf elixir plugin:

```shell
asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git
```

* List all asdf elixir versions:

```shell
asdf list-all elixir
```

* Install your version, example:

```shell
asdf install elixir 1.13.4-otp-24
```

* Use that version global or local:


```shell
asdf global elixir 1.13.4-otp-24
```

or

```shell
asdf local elixir 1.13.4-otp-24
```

* Add hex

```shell
mix local.hex
```

* Install phoenix

```shell
mix archive.install hex phx_new
```

* Create a new phoenix project (we use sqlite, default is postgres):

```shell
mix phx.new --database sqlite3 hello_world_phoenix
```

* Fetch and install dependencies

* Follow steps you see after install like:

```shell
cd hello_world_phoenix
```

## Generate authentication: user registration, log in, log out, etc.

The easy way is to use a generator:

```shell
mix phx.gen.auth Accounts User users
```

* **Accounts:** is like a model which interact with database to get data.
* **User:** is the schme with the table fields, relations, etc.
* **users:** is the database table name.
* Here the [official docs](https://hexdocs.pm/phoenix/Mix.Tasks.Phx.Gen.Auth.html).

Follow the command instructions about database migration, etc.

## Basic commands

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
