defmodule Proper.Mixfile do
  use Mix.Project

  def project do
    [app: :proper,
     version: "1.3.0",
     description: description(),
     package: package(),
     deps: deps(),
     aliases: aliases()]
  end

  defp deps do
    []
  end

  defp description do
    """
    QuickCheck-inspired property-based testing tool for Erlang.
    """
  end

  defp package do
     [files: ~w(src include rebar.config Makefile COPYING README.md THANKS examples scripts mix.exs),
     maintainers: ["Manolis Papadakis", "Eirini Arvaniti", "Kostis Sagonas"],
     licenses: ["GPL"],
     links: %{"GitHub" => "https://github.com/proper-testing/proper"}]
   end

  defp aliases do
    [docs: "cmd ./make_doc"]
  end
end
