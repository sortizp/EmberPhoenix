# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :library_api,
  ecto_repos: [LibraryApi.Repo]

# Configures the endpoint
config :library_api, LibraryApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Azti53QPJpHxMfg4eW2wceUANp7mxMu9rGIRSwjyuDampVQfZGEnaPI3cP7b2caH",
  render_errors: [view: LibraryApiWeb.ErrorView, accepts: ~w(json json-api)],
  pubsub: [name: LibraryApi.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "CiuaMupm"]

config :mime, :type, %{
    "application/vnd.api+json" => ["json-api"]
}

config :phoenix, :format_encoders, "json-api": Poison
# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
