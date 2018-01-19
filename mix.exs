defmodule Plumbing.MixProject do
  use Mix.Project

  def project do
    [
      app: :plumbing,
      version: "0.1.0",
      elixir: "~> 1.4",
      description: "Useful functions to work with pipes.",
      package: package(),
      start_permanent: Mix.env() == :prod,
      docs: [main: "Plumbing"],
      source_url: "https://github.com/kelvinst/plumbing",
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  defp package do
    [
      name: :plumbing,
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Kelvin Stinghen"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/kelvinst/plumbing"}
    ]
  end
end
