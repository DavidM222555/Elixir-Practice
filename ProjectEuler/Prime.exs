defmodule Primes do
  def filterByMultiplesOfN(passed_list, n) do
      passed_list
      |> Enum.filter(fn x -> rem(x, n) != 0 or x <= n end)

  end

  defp sieveOfEratosthenesHelper(n, maxN, currentList, currentPrimes) do
      if n > maxN do
          currentPrimes ++ currentList
      else
          IO.puts(n)

          currentList = filterByMultiplesOfN(currentList, n)
          currentPrimes = [hd(currentList) | currentPrimes]

          sieveOfEratosthenesHelper(hd(currentList), maxN, tl(currentList), currentPrimes)
      end

  end

  def sieveOfEratosthenes(n) do
      primesToN = 2..n
      primesToN = sieveOfEratosthenesHelper(2, round(:math.sqrt(n) + 1), primesToN, [])

  end
end
