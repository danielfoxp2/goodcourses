defmodule WhiteBread.DefaultContext do
  use WhiteBread.Context

 given_ ~r/^I am a number$/, fn state ->
   {:ok, state}
 end

 when_ ~r/^somebody ask who I am$/, fn state ->
   {:ok, state}
 end

 then_ ~r/^I answer "(?<argument_one>[^"]+)"$/,
 fn state, %{argument_one: _argument_one} ->
     {:ok, state}
 end
 
end
