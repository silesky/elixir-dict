# mix escript.build
# watch -n 1 ./dictionary
# Enum.find([1, 2, 3], fn (el) -> el == 1 end) // 1
# Enum.map([1, 2, 3], fn(el) -> el * 2 end) // [2, 4, 6]
# Map.get(%{a: 1}, :a) // 1


defmodule Dictionary do

  def main(args) do
    IO.puts "main method called..." 
    args
    |> parse_args
    |> lookup
    |> IO.inspect
  end
    
  defp find_term(term) do # given a term, searches terms.json and returns the matching term
    { :ok, terms } = "./lib/terms.json"
      |> File.read!
      |> JSON.decode
    item = Enum.find(terms, fn(el) -> Map.get(el, term) end)
    item
  end

  defp parse_args(args) do # defp i.e. private
    {_, _, [{_, word}]} = OptionParser.parse(args);
    word
  end

  def lookup(args) do
    foundItem = find_term(args)
    newItem = foundItem
    |> Map.get(args)
    |> Map.get("def")
    newItem
  end

  def transformer([]) do
    IO.puts "no arguments given"
  end

end
