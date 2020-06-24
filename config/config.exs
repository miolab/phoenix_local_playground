# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phx_test_hoge,
  ecto_repos: [PhxTestHoge.Repo]

# Configures the endpoint
config :phx_test_hoge, PhxTestHogeWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ZK9LnUOs1/zqWvuB5G4XX9/Wo3p1QGIWTmRAg+4xyW3xSnCYQKe4VbOyO+0PtcZC",
  render_errors: [view: PhxTestHogeWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: PhxTestHoge.PubSub,
  live_view: [signing_salt: "Y3J5Chsy"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
