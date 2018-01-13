defmodule RepoExampleTest do
  use ExUnit.Case
  doctest RepoExample

  test "greets the world" do
    assert RepoExample.hello() == :world
  end

  test "greets by name" do
    assert RepoExample.hello("Karol") == "Hello Karol!"
  end
end
