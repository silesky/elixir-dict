


defmodule Dictionary do

  # mix escript.build
  # watch -n 1 ./dictionary 
  def main(args) do
    # terms = File.read!("terms.json");
    IO.inspect parse_terms
    IO.puts "main method!!."
    args 
    |> parse_args 
    |> lookup 
  end


  def parse_terms() do
   { :ok, stuff } = "./lib/terms.json"
   |> File.read!
   |> JSON.decode 
   stuff
  #returns the last value
  end
  defp parse_args(args) do
    {_, _, [{_, word}]} = OptionParser.parse(args);
    IO.inspect word
      # IO.puts "searching for #{item}'
  end
    def lookup(word) do
      case word do
      "atom" -> IO.puts "atoms - constants! with itself as value."
      "char list" -> IO.puts "list of the 'code points' of each characters, rather than the chars themselves"
      _->  IO.puts "nothing found"
    end
  end
  def transformer([]) do 
    IO.puts "no arguments given"
  end
end