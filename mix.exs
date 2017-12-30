defmodule Tripcode.Mixfile do
  use Mix.Project

  def project do
    [
      app: :tripcode,
      version: "1.0.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps(),
      package: package(),
      description: description(),
      source_url: "https://github.com/ominousness/tripcode"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :iconv, :crypt3]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:iconv, "~> 1.0"},
      {:crypt3, "~> 1.0.4"},
      {:ex_doc, ">= 0.0.0", only: :dev}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
    ]
  end

  defp description do
    "4chan tripcodes for elixir."
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README.md", "LICENSE", "config", "test"],
      maintainers: ["Ominousness"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/ominousness/tripcode"}
    ]
  end
end
