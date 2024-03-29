defmodule Example do
  def greeting(name) do
    "Hello #{name}."
  end
end

defmodule Example.Greeting do
  def moring(name) do
    "Good morning, #{name}."
  end

  def evening(name) do
    "Good evening, #{name}."
  end
end

# att in modules
defmodule Greeting do
  @hello "Hello"

  def ola(name) do
    "#{@hello}, #{name}."
  end
end
