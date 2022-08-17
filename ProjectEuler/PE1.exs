
defmodule ProjectEulerProb1 do
    defp is_div_by_3_or_5(n) do
        rem(n, 3) == 0 or rem(n, 5) == 0
    end

    def getSolution(start_num, end_num) do
        start_num..(end_num - 1) |> Enum.filter(fn x -> is_div_by_3_or_5(x) end) |> Enum.sum
    end
end

IO.puts(ProjectEulerProb1.getSolution(1, 1000))
