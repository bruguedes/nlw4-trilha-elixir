defmodule Rocketpay.NumbersTest do
  use ExUnit.Case

  alias Rocketpay.Numbers

  describe "sum_from_file/1"do
    test "Percorre todo arquivo, convertendo strings em tipo Integer e soma todos os valores" do
        response = Numbers.sum_from_file("Numbers")

        expected_response = {:ok, %{Resultado: 37}}

        assert response == expected_response
      end

    test "Falha na execução do modulo" do
        response = Numbers.sum_from_file("banana")

        expected_response = {:error, %{message: "Arquivo Invalido!"}}

        assert response == expected_response
    end
  end
 end
