defmodule Tachikoma.Application do
  @moduledoc """
  The Tachikoma Application Service.

  The backend system business domain lives in this application.

  Exposes API to clients such as the `Tachikoma.Web` application
  for use in channels, controllers, and elsewhere.
  """
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    Supervisor.start_link([
      supervisor(Tachikoma.Repo, []),
    ], strategy: :one_for_one, name: Tachikoma.Supervisor)
  end
end
