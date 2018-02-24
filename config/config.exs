# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :npm_scripts,
  ecto_repos: [NpmScripts.Repo]

# Configures the endpoint
config :npm_scripts, NpmScriptsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "dAvKvY27xznX3QvPcOZJVz8NJuTpr8qBcsfH80a+3VCJoLu/mxOAaejHivL+SVpd",
  render_errors: [view: NpmScriptsWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: NpmScripts.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
