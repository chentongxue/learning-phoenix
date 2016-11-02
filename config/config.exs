# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_moment,
  ecto_repos: [PhoenixMoment.Repo]

# Configures the endpoint
config :phoenix_moment, PhoenixMoment.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "6mhpaYnq4JTDfIbYyC4m2v2zR9AWlar/n7dFsvg81b5PNtnOIE59STpgjLf0ce9h",
  render_errors: [view: PhoenixMoment.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixMoment.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
