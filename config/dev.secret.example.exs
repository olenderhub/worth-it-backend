use Mix.Config

# Configure your database
config :worth_it, WorthIt.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "username",
  password: "password",
  database: "worth_it_dev",
  hostname: "localhost",
  pool_size: 10
