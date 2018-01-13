defmodule RepoExample do
  @moduledoc """
  Documentation for RepoExample.
  """

  @doc """
  Hello world.

  ## Examples

      iex> RepoExample.hello
      :world
      iex> RepoExample.hello("Karol")
      "Hello Karol!"

  """
  def hello(name \\ nil)
  def hello(nil), do: :world
  def hello(name) do
    "Hello #{name}!"
  end
end
