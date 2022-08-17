
defmodule ProjectEulerProb4 do
	def is_palindrome(n) do
		s = Integer.to_string(n)
		s == String.reverse(s)
	end


	def findLargestPalindromicProduct() do
		zipped_list = for i <- 100..1000, j <- 100..1000, do: i * j

		result = zipped_list
		|> Enum.filter(fn x -> is_palindrome(x) end)
		|> Enum.max()

		IO.puts(result)
	end
end

ProjectEulerProb4.findLargestPalindromicProduct()
