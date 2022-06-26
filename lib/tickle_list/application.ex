defmodule TickleList.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      TickleList.Repo,
      # Start the Telemetry supervisor
      TickleListWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: TickleList.PubSub},
      # Start the Endpoint (http/https)
      TickleListWeb.Endpoint
      # Start a worker by calling: TickleList.Worker.start_link(arg)
      # {TickleList.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: TickleList.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    TickleListWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
