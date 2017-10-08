# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :redis_pubsub,
  ecto_repos: [RedisPubsub.Repo]

# Configures the endpoint
config :redis_pubsub, RedisPubsubWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "clldmCL9aQnrli5Yx2a8PTyV9KRMObR66N1S80b87GEfz9sFs6ArBuJJnvlVqGk0",
  render_errors: [view: RedisPubsubWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: RedisPubsub.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
