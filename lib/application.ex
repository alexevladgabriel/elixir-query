defmodule ExQuery.Application do
  @moduledoc """
  Documentation for `ExQuery.Application`.
  """

  use Application

  def start(_type, _args) do
    children = [
      {A2S.Client, []}
    ]

    opts = [strategy: :one_for_one, name: ExQuery.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
