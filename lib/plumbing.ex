defmodule Plumbing do
  @moduledoc """
  Useful functions to work with pipes.

  Check the list of functions below.
  """

  @doc """
  Pipes the `subject` through the given anonymous `function` and
  returns `function`'s result.

  This function is useful to pipe the subject through an anonymous
  function, without having to do `1 |> (&to_string/1).()`, which is
  a little bit to much parens.

  ## Examples

      iex> 1 |> Plumbing.pipe(&to_string/1)
      "1"

  """
  def pipe(subject, function), do: function.(subject)

  @doc """
  Pipes the `subject` through the given anonymous `function` but
  always returns `subject`.

  This function might be useful in situations you want to transform
  the subject in something else and print it, or to save it to
  a file. Basically anything which may generate some side effects but
  you don't care about the results.

  ## Examples

      iex> 1 |> Plumbing.tee(&to_string/1) |> Kernel.+(1)
      2

  """
  def tee(subject, function) do
    function.(subject)
    subject
  end
end
