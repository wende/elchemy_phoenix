use Mix.Config


config :elchemy_phoenix,
  ecto_repos: [ElchemyPhoenix.Repo]


config :elchemy_phoenix, ElchemyPhoenixWeb.Endpoint,
  url: [host: "localhost"]
