use Mix.Config

config :backend, ecto_repos: [Tachikoma.Repo]

import_config "#{Mix.env}.exs"
