# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :choirs_api,
  ecto_repos: [ChoirsApi.Repo]

# Configures the endpoint
config :choirs_api, ChoirsApi.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "JFKNTz/Tt1lr2KLcW9iB1NlZZ3LEWNdNADQgnuIKg7RiKYsrEATUst6WyGI85uUM",
  render_errors: [view: ChoirsApi.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ChoirsApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
