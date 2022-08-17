defmodule ProjectEulerProb5 do
	def divisibleToN(numToTest, n) do
		if n == 0 do
			true
		else
			if rem(numToTest, n) == 0 do
				divisibleToN(numToTest, n - 1)
			else
				false
			end
		end
	end

	def solutionHelper(currentN) do

		if divisibleToN(currentN, 20) do
			currentN
		else
			solutionHelper(currentN + 20)
		end
	end

	def getSolution() do
		IO.puts(solutionHelper(20))
	end
end

ProjectEulerProb5.getSolution()
