defmodule Gtfront.Application do
  @moduledoc """
  The Gtfront Application Service.

  The gtfront system business domain lives in this application.

  Exposes API to clients such as the `GtfrontWeb` application
  for use in channels, controllers, and elsewhere.
  """
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    Supervisor.start_link([
      
    ], strategy: :one_for_one, name: Gtfront.Supervisor)
  end
end
