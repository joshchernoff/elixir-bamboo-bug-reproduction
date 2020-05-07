# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :bamboo_example,
  ecto_repos: [BambooExample.Repo]

# Configures the endpoint
config :bamboo_example, BambooExampleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "QMeMKe4H1nU7RtAKXYSQTfEVfGXplbjW3fWz774WbIf9v+gEbxvOcQxRukqtVrJ6",
  render_errors: [view: BambooExampleWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: BambooExample.PubSub,
  live_view: [signing_salt: "iuC1odaa"]

config :bamboo_example, MyApp.Mailer,
  adapter: Bamboo.MandrillAdapter,
  api_key: "an_api_key_not_important_for_the_example"

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
