
defmodule ProjectEulerProb2 do
	def getSumOfEvenFibToN(n) do
		Stream.unfold({0, 1}, fn {a, b} -> {a, {b, a + b}} end)
		|> Enum.take_while(fn x -> x < n end)
		|> Enum.filter(fn x -> rem(x, 2) == 0 end)
		|> Enum.sum
	end
end

IO.puts(ProjectEulerProb2.getSumOfEvenFibToN(4000000))
