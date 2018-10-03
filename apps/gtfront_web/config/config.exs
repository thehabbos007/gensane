# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :gtfront_web,
  namespace: GtfrontWeb

# Configures the endpoint
config :gtfront_web, GtfrontWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "R3JRM8iXz7i4dn1F11AaSlgfoL7a7lIVINC1AotssvVhPHLdBN7/Mbg8nTmhBon4",
  render_errors: [view: GtfrontWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: GtfrontWeb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :gtfront_web, :generators,
  context_app: :gtfront

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
