defmodule ExQuery.Dns.Resolver do
  @spec resolve(String.t()) :: any()
  def resolve(hostname) do
    case DNS.resolve(hostname) do
      {:ok, address} ->
        {:ok, Enum.at(address, 0)}

      {:error, _} ->
        case address = :inet.parse_address(to_charlist(hostname)) do
          {:ok, _} -> address
          {:error, _} -> {:error, :invalid_hostname}
        end
    end
  end
end
