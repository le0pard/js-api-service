defmodule JsApiService do
  use Application

  # See http://elixir-lang.org/docs/stable/Application.Behaviour.html
  # for more information on OTP Applications
  def start(_type, _args) do
    JsApiService.Supervisor.start_link
  end

  def main(args) do
    parse_args(args) |> process_args
    JsApiService.Router.start
    :timer.sleep(:infinity)
  end

  defp parse_args(args) do
   {options, _, _ } = OptionParser.parse(args)
   options
 end

 defp process_args([head|tail]) do
   process_args(head)
   process_args(tail)
 end

 defp process_args({:pid, pid}) do
   File.write!(pid, :os.getpid, [:write])
 end

 defp process_args([]) do
   # empty
 end

 defp process_args(unecpected) when is_tuple(unecpected) do
   IO.puts("Unexpected argument #{inspect(unecpected)}")
 end

end
