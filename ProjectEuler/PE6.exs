
defmodule ProjectEulerProb6 do
    def sumOfSquaresToN(n) do 
        1..n 
        |> Enum.map(fn x -> x*x end)
        |> Enum.sum()
    end

    def squareOfSumsToN(n) do 
        result = 
        1..n
        |> Enum.sum()

        result * result
    end

    def solution(n) do 
        IO.puts(squareOfSumsToN(100) - sumOfSquaresToN(100))
    end 
end

ProjectEulerProb6.solution(10)