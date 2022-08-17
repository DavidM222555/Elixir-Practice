
Code.require_file("Prime.exs")

defmodule ProjectEulerProb7 do 

    # Kind of a hardcoded solution but alas ... 
    def getSolution() do 
        IO.puts(Primes.sieveOfEratosthenes(1000000) |> Enum.at(10001))
    end 
end 

ProjectEulerProb7.getSolution()