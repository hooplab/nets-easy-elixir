defmodule NetsEasy.MixProject do
  use Mix.Project

  def project do
    [
      app: :nets_easy,
      version: "0.2.3",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      name: "nets_easy",
      source_url: "https://github.com/hooplab/nets-easy-elixir"
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:tesla, "~> 1.4.0"},
      {:poison, "~> 4.0"},
      {:inflex, "~> 2.0.0"},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false},
      {:jason, "~> 1.2", only: :test}
    ]
  end

  defp description() do
    "An elixir SDK built on Tesla for interacting with Nets Easy's payment API, not official nor endorsed by NETS."
  end

  defp package() do
    [
      name: "nets_easy",
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/hooplab/nets-easy-elixir"}
    ]
  end
end
