defmodule Dictionary do
  def main(args) do
      IO.puts "Hello world"
  end
  defp parse_args(args) do
    {options, _, _} = OptionParser.parse(args,
      switches: [foo: :string]
    )
    options
  end
end
