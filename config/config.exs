# This file is responsible for configuring your application
# and its dependencies with the aid of the Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

config :boardwise,
  namespace: BoardWise,
  ecto_repos: [BoardWise.Repo],
  generators: [timestamp_type: :utc_datetime]

# https://hexdocs.pm/phoenix/Phoenix.Endpoint.html
config :boardwise, BoardWiseWeb.Endpoint,
  # Starts the web server when the endpoint supervision tree starts.
  server: true,
  # Configuration for generating URLs throughout the app.
  url: [host: "localhost"],
  # Which webserver adapter to use for serving web requests.
  adapter: Phoenix.Endpoint.Cowboy2Adapter,
  # Responsible for rendering templates whenever there is a failure in the
  # application.
  render_errors: [
    formats: [html: BoardWiseWeb.ErrorHTML, json: BoardWiseWeb.ErrorJSON],
    layout: false
  ],
  # The name of the pubsub server to use in channels and via the Endpoint
  # broadcast functions.
  pubsub_server: BoardWise.PubSub,
  # https://hexdocs.pm/phoenix_live_view/welcome.html
  live_view: [signing_salt: "NutZSMRk"]

# Configures the mailer
#
# By default it uses the "Local" adapter which stores the emails
# locally. You can see the emails in your browser, at "/dev/mailbox".
#
# For production it's recommended to configure a different adapter
# at the `config/runtime.exs`.
config :boardwise, BoardWise.Mailer, adapter: Swoosh.Adapters.Local

# Configure esbuild (the version is required). Aim to use the same target as
# specified in tsconfig.json for ease of understanding. There are cases where
# esbuild will interpret the tsconfig.json target independently of that
# specified in this command (e.g. `useDefineForClassFields` as explained in
# https://esbuild.github.io/content-types/#tsconfig-json).
config :esbuild,
  version: "0.17.11",
  default: [
    args: ~w(
      ./js/app.js
      ./js/react/main.jsx
      --bundle
      --target=es2016
      --outdir=../priv/static/assets
      --external:/fonts/*
      --external:/images/*
    ),
    cd: Path.expand("../assets", __DIR__),
    env: %{"NODE_PATH" => Path.expand("../deps", __DIR__)}
  ]

# Configure tailwind (the version is required)
config :tailwind,
  version: "3.3.2",
  default: [
    args: ~w(
      --config=tailwind.config.js
      --input=css/app.css
      --output=../priv/static/assets/app.css
    ),
    cd: Path.expand("../assets", __DIR__)
  ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"
