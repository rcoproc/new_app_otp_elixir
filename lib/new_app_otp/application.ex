defmodule NewAppOtp.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      {NewAppOtp.CounterSup, [10000, 20000, 30000, 40000, 50000]}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: NewAppOtp.Supervisor]
    Supervisor.start_link(children, opts)
  end

  @impl true
  def prep_stop(st) do
    stop_tasks =
      for {_, pid, _, _} <- Supervisor.which_children(NewAppOtp.CounterSup) do
        Task.async(fn ->
          :ok = NewAppOtp.Counter.stop_gracefully(pid)
        end)
      end

    Task.await_many(stop_tasks)

    st
  end
end
