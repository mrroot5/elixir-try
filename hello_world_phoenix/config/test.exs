import Config

# Only in tests, remove the complexity from the password hashing algorithm
config :bcrypt_elixir, :log_rounds, 1

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :hello_world_phoenix, HelloWorldPhoenix.Repo,
  database: Path.expand("../hello_world_phoenix_test.db", Path.dirname(__ENV__.file)),
  pool_size: 5,
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :hello_world_phoenix, HelloWorldPhoenixWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "t8WcJZd5Wswn/zTeuDN2YKGyzf2B4DTiC0dVz2kHc3CYlS1XDB1njaiEvrptCy6z",
  server: false

# In test we don't send emails.
config :hello_world_phoenix, HelloWorldPhoenix.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
