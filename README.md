# Dictionary


watch -n 5 './dictionary'
wr --exec 'mix escript.build'

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `dictionary` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:dictionary, "~> 0.1.0"}]
    end
    ```

  2. Ensure `dictionary` is started before your application:

    ```elixir
    def application do
      [applications: [:dictionary]]
    end
    ```

