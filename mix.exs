defmodule RepoExample.Mixfile do
  use Mix.Project

  @github_url "https://github.com/surgeventures/repo-example-elixir"

  def project do
    [
      app: :repo_example,
      version: "1.0.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps(),
      docs: [
        main: "readme",
        extras: ["README.md", "CHANGELOG.md"]
      ],
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [
        "coveralls": :test,
        "coveralls.detail": :test,
        "coveralls.post": :test,
        "coveralls.html": :test
      ],
      name: "RepoExample",
      description: "An example open source Elixir application.",
      source_url: @github_url,
      homepage_url: @github_url,
      files: ~w(mix.exs lib LICENSE.md README.md CHANGELOG.md),
      package: [
        maintainers: ["Karol Słuszniak"],
        licenses: ["MIT"],
        links: %{
          "GitHub" => @github_url,
        }
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
      {:ex_doc, "~> 0.18", only: :dev, runtime: false},
      {:junit_formatter, "~> 2.1", only: :test},
      {:credo, "~> 0.8", only: [:dev, :test]},
      {:excoveralls, "~> 0.8", only: :test}
    ]
  end
end
