defmodule Home do
  @on_load :load_nifs

  def load_nifs do
    :erlang.load_nif('./nativly', 0)
  end

  def add(_a, _b) do
    raise "NIF add/2 is not implemented!"
  end
end
