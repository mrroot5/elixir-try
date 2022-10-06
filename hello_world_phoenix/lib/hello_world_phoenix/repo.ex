defmodule HelloWorldPhoenix.Repo do
  use Ecto.Repo,
    otp_app: :hello_world_phoenix,
    adapter: Ecto.Adapters.SQLite3
end
