defmodule ExQuery do
  @spec query(
          hostname :: String.t(),
          port :: :inet.port_number()
        ) ::
          {
            :ok,
            {A2S.Info.t(), A2S.Players.t()}
          }
          | {:error, :query_timeout}
          | {:error, term()}
  def query(hostname, port) do
    with {:ok, ip} <- ExQuery.Dns.resolve(hostname),
         {:info, info} <- A2S.Client.query(:info, {ip, port}),
         {:players, players} <- A2S.Client.query(:players, {ip, port}) do
      {:ok, {info, players}}
    else
      {:error, :recv_timeout} -> {:error, :query_timeout}
      {:error, err} -> {:error, err}
    end
  end
end
