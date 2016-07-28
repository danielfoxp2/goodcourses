defmodule WhiteBread.Acceptance.FirstContext do
  use WhiteBread.Context

  given_ ~r/^I am serious$/, fn state ->
    {:ok, state}
  end

  when_ ~r/^I make a joke$/, fn state ->
    {:ok, state}
  end

  then_ ~r/^nobody laugh$/, fn state ->
    {:ok, state}
  end

  given_ ~r/^I am not serious$/, fn state ->
    {:ok, state}
  end

  then_ ~r/^everybody laugh$/, fn state ->
    {:ok, state}
  end
  
end
