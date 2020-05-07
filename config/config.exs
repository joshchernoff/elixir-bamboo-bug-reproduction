# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :bamboo_test,
  ecto_repos: [BambooTest.Repo]

# Configures the endpoint
config :bamboo_test, BambooTestWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "M42pucHx9LFhmEL+f5NjrWdz8vl3lLXETTXxgz7I5ZNjlgttuZkzpnlP5WZvhlOv",
  render_errors: [view: BambooTestWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: BambooTest.PubSub,
  live_view: [signing_salt: "5K5V4Swi"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
