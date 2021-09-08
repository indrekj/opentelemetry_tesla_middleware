defmodule OpentelemetryTeslaMiddleware.MixProject do
  use Mix.Project

  def project do
    [
      app: :opentelemetry_tesla_middleware,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      description: description(),
      docs: docs()
    ]
  end

  defp docs() do
    [
      main: "readme",
      extras: ["README.md"]
    ]
  end

  defp description() do
    "Tesla middleware handler that creates OpenTelemetry spans from Tesla HTTP client events."
  end

  defp package do
    [
      name: "opentelemetry_tesla_middleware",
      maintainers: ["Ricardo Paiva"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/ricardoccpaiva/opentelemetry_tesla_middleware"}
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
      {:opentelemetry, "~> 1.0.0-rc.2", only: :test},
      {:opentelemetry_api, "~> 1.0.0-rc.2"},
      {:opentelemetry_telemetry, "~> 1.0.0-beta.2"},
      {:tesla, "~> 1.4"},
      {:ex_doc, "~> 0.24", only: :dev, runtime: false}
    ]
  end
end
