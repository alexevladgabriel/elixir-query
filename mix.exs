defmodule ExQuery.MixProject do
  use Mix.Project

  @source_url "https://github.com/gamequerydotro/ex-query"

  def project do
    [
      app: :ex_query,
      version: "0.1.0",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def package do
    [
      name: "ex_query",
      source_url: @source_url,
      description: "General game servers query mechanism for Elixir",
      licenses: ["MIT"],
      maintainers: ["Scai"]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {ExQuery, []},
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:elixir_a2s, "~> 0.4.3"},
      {:dns, "~> 2.4.0"}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end
