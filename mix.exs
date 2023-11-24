defmodule BakewareExample.MixProject do
  use Mix.Project

  @app :bakeware_example

  def project do
    [
      app: @app,
      version: "0.1.0",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      releases: [{@app, release()}]
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

  defp release do
    [
      overwrite: true,
      quiet: true,
      steps: [:assemble, &Bakeware.assemble/1],
      strip_beams: Mix.env() == :prod
    ]
  end
end
