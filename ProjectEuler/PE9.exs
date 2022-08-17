
defmodule ProjectEulerProb9 do 
    def test() do
        solution =  for x <- 1..1000, 
                        y <- (x + 1)..1000, 
                        z <- (y + 1)..1000, 
                        x + y + z == 1000, 
                        x*x + y*y == z*z,
                        do: x*y*z
        
        solution =  solution
                    |> Enum.at(0)

        IO.puts(solution)
    end
end 

ProjectEulerProb9.test()