defmodule FlounderRabbitReciever.MixProject do
  use Mix.Project

  def project do
    [
      app: :rabbit_reciever,
      version: "0.1.0",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps()
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
      {:amqp, "~> 1.2.2"},
      {:ranch, "~> 1.7"},
      {:gen_rmq, "~> 1.3"},
    ]
  end
end
