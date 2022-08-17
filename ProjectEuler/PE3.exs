
defmodule ProjectEulerProblem3 do
    defp findLargestPrimeFactorHelper(n, factor_to_consider, largest_factor) do

        if (n < 2) do
            IO.puts("Condition met")
            factor_to_consider
        else

            if rem(n, factor_to_consider) == 0 do
                findLargestPrimeFactorHelper(div(n, factor_to_consider), factor_to_consider, factor_to_consider)
            else
                findLargestPrimeFactorHelper(n, factor_to_consider + 1, largest_factor)
            end
        end
    end

    def findLargestPrimeFactor(n) do
        result = findLargestPrimeFactorHelper(n, 2, 2)

        IO.puts(result)
    end
end

ProjectEulerProblem3.findLargestPrimeFactor(600851475143)
