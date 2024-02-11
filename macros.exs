defmodule Unless do
  def fun_unless(clause, do: expression) do
    if(!clause, do: expression)
  end

  defmacro macro_unless(clause, do: expression) do
    quote do
      if(!unquote(clause), do: unquote(expression))
    end
  end

  defmacro print_text(text) do
    quote do
      IO.puts(unquote(text))
    end
  end

  def print(text) do
    IO.puts(text)
  end

  defmacro macro_1(a, b) do
    quote do
      unquote(a + b)
    end
  end

  defmacro macro_reduce(the_list, the_acc, function) do
    quote do
      Enum.reduce(unquote(the_list), unquote(the_acc), unquote(function))
    end
  end
end
