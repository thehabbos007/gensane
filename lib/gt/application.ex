defmodule GT.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false
    # List all child processes to be supervised
    children = [
      # Starts a worker by calling: GT.Worker.start_link(arg)
      # {GT.Worker, arg},
      supervisor(Registry, [:unique, :account_process_registry]),
      supervisor(GT.AccountSupervisor, [])
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: GT.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
