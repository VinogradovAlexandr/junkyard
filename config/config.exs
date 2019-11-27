# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :junkyard,
  ecto_repos: [Junkyard.Repo]

# Configures the endpoint
config :junkyard, JunkyardWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "RAO4bFcxXIrX3bc+nF66yc6LxgDAt5mOVI5w6kKAOOq23+8QXNiGUln3xsMZWTj2",
  render_errors: [view: JunkyardWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Junkyard.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
