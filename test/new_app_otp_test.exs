defmodule NewAppOtpTest do
  use ExUnit.Case
  doctest NewAppOtp

  test "greets the world" do
    assert NewAppOtp.hello() == :world
  end
end
