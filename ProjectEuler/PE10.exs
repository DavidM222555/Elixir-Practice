
Code.require_file("Prime.exs")

defmodule ProjectEulerProb10 do 

    def getSolution() do 
        solution =  Primes.sieveOfEratosthenes(2000000)
                    |> Enum.sum()

        IO.puts(solution)

    end
end 

ProjectEulerProb10.getSolution()

