defmodule WhiteBread.Test2.SecondContext do
  use WhiteBread.Context

  given_ ~r/^modafoca$/, fn state ->
    {:ok, state}
  end

  when_ ~r/^joke modafoca$/, fn state ->
    {:ok, state}
  end

  given_ ~r/^serious modafoca$/, fn state ->
    {:ok, state}
  end

  then_ ~r/^laugh modafoca$/, fn state ->
    {:ok, state}
  end
  
end
