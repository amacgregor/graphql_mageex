# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :mageex,
  ecto_repos: [Mageex.Repo]

# Configures the endpoint
config :mageex, MageexWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "vZSYSJXKI49WwmKCtu2zdFSOU+2JS747DA3S+PA+EF0lEh4ItJf9uynAr1T17XJK",
  render_errors: [view: MageexWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Mageex.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
