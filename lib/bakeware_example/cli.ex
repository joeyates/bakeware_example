defmodule BakewareExample.CLI do
  use Bakeware.Script

  @impl Bakeware.Script
  def main(_args) do
    IO.puts "bakeware_example works!"
    0
  end
end
