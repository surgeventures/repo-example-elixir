defmodule RepoExampleTest do
  use ExUnit.Case
  doctest RepoExample

  test "greets the world" do
    assert RepoExample.hello() == :world
  end
end
