defmodule ElchemyPhoenix.Mixfile do
  use Mix.Project

  def project do
    [
      app: :elchemy_phoenix,
      version: "0.1.0",
      elixir: "~> 1.5",

      deps: deps(),
      aliases: aliases(),

      start_permanent: Mix.env == :prod,
      compilers: [:elchemy, :phoenix] ++ Mix.compilers,
      elixirc_paths: ["lib", "elm-deps"],
      elchemy_path: "elm"
    ]
  end

  def application do
    [
      mod: {ElchemyPhoenix.Application, []},
      extra_applications: [:logger, :runtime_tools]
    ]
  end

  defp deps do
    [
      {:phoenix, "~> 1.3.0"},
      {:phoenix_ecto, "~> 3.2"},
      {:postgrex, ">= 0.0.0"},
      {:cowboy, "~> 1.0"}
    ]
  end

  defp aliases do
    [
      "ecto.setup": ["ecto.create", "ecto.migrate", "run priv/repo/seeds.exs"],
      "ecto.reset": ["ecto.drop", "ecto.setup"],
      "test": ["ecto.create --quiet", "ecto.migrate", "test"]
    ]
  end
end
