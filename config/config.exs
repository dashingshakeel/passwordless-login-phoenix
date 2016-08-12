# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :passwordless_login_app,
  ecto_repos: [PasswordlessLoginApp.Repo]

# Configures the endpoint
config :passwordless_login_app, PasswordlessLoginApp.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "UgR83zFSjzWx2umpxEiVuTmsNMyqZQun1cZO5Yp2LEX433WGmngFPIG2MGlmp5ZM",
  render_errors: [view: PasswordlessLoginApp.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PasswordlessLoginApp.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
