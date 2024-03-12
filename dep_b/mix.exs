defmodule DepB.MixProject do
  use Mix.Project

  def project do
    [
      app: :dep_b,
      version: "0.1.0",
      elixir: "~> 1.17-dev",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: [
        description: "dependency a",
        licenses: [],
        links: []
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:dep_a, "~> 0.1", repo: "acme", optional: true}
    ]
  end
end
