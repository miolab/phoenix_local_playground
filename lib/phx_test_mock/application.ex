defmodule PhxTestMock.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      PhxTestMock.Repo,
      # Start the Telemetry supervisor
      PhxTestMockWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: PhxTestMock.PubSub},
      # Start the Endpoint (http/https)
      PhxTestMockWeb.Endpoint
      # Start a worker by calling: PhxTestMock.Worker.start_link(arg)
      # {PhxTestMock.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: PhxTestMock.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    PhxTestMockWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
