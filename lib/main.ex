defmodule ExQuery do
  @moduledoc """
  Documentation for `ElixirQuery`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ElixirQuery.hello()
      :world

  """
  @spec query(
          hostname :: String.t(),
          port :: :inet.port_number()
        ) :: any()
  def query(hostname, port) do
    # check if the hostname is not a inet.ipv4_address
    ExQuery.Dns.resolve(hostname)
  end
end
