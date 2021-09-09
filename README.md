# NewAppOtp

** Using Supervisors to organize your Elixir App

### Original Code and More information

[AppSignal](https://blog.appsignal.com/2021/08/23/using-supervisors-to-organize-your-elixir-application.html?utm_source=elixir-radar-sponsored&utm_medium=email&utm_campaign=2021-08-23)


    iex -S mix
    Supervisor.which_children(NewAppOtp.Supervisor)

    Supervisor.which_children(NewAppOtp.CounterSup)

    # Stop and restart the app
    Application.stop(:new_app_otp)
    Application.start(:new_app_otp)

    # Get da PID on Genserver state 
    pid = pid("0.178.0")
    NewAppOtp.Counter.get(pid)

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `new_app_otp` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:new_app_otp, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/new_app_otp](https://hexdocs.pm/new_app_otp).

