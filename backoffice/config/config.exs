# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :backoffice,
  ecto_repos: [Backoffice.Repo]

# Configures the endpoint
config :backoffice, BackofficeWeb.Endpoint,
  url: [host: "localhost", port: 5000],
  secret_key_base: "9vOt2vJIvCbZnb8mIveoYoxqSXMjf1PLbn2FfgCgZQtSULto+JvGKlpKHz4rKVuY",
  render_errors: [view: BackofficeWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Backoffice.PubSub,
  live_view: [signing_salt: "Y/gUlEwF"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
