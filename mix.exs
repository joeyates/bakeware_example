defmodule BakewareExample.MixProject do
  use Mix.Project

  def project do
    [
      app: :bakeware_example,
      version: "0.1.0",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
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
      {:bakeware, ">= 0.0.0", runtime: false},
    ]
  end
end
