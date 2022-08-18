
defmodule ProjectEulerProb14 do
    def collatzValue(n) do 
        cond do 
            rem(n, 2) == 0 -> round(div(n, 2))
            true -> 3*n + 1
        end
    end

    def getCollatzLength(n) do 
        collatzLength =    Stream.unfold(n, fn 
                    1 -> nil
                    n -> {n, collatzValue(n)} 
                    end)
                    |> Enum.count()

        collatzLength
    end

    def solution() do 
        answer =    1..1000000
                    |> Enum.map(fn x -> {getCollatzLength(x), x} end)
                    |> Enum.max_by(fn {x, _} -> x end)
                    |> elem(1)

        IO.puts(answer)

    end 
end 

ProjectEulerProb14.solution()