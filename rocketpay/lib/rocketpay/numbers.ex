defmodule Rocketpay.Numbers do
  def sum_from_file(filename) do
    "#{filename}.csv"
     |> File.read()
     |>handle_file()
    end

  defp handle_file({:ok, result}) do
    result =
      result
      |> String.split( ",")
      |> Stream.map(fn item -> String.to_integer(item) end)
      |> Enum.sum()
    {:ok, %{Resultado: result}}
  end
  defp handle_file({:error, _reason}), do: {:error, %{message: "Arquivo Invalido!"}}
 end
