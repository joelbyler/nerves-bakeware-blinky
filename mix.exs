defmodule Blinky.Mixfile do
  use Mix.Project

  def project do
    [app: :blinky,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  def application do
    [applications: [:leds],
     mod: {Blinky, [:leds]}]
  end

  defp deps do
    [
      {:exrm, "~> 0.18.1"},
      {:leds, github: "cellulose/leds"}
    ]
  end
end
