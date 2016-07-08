defmodule DefaultContext do
  use WhiteBread.Context

  feature_starting_state fn ->
    %{feature_state_loaded: :yes}
  end

  scenario_starting_state fn feature_state ->
    feature |> Dict.put(:starting_state_loaded, :yes)
  end

  scenario_finalize fn _state ->
  end

  given_ ~r/^I am serious$/, fn state ->
      {:ok, state}
  end

  given_ ~r/^I am not serious$/, fn state ->
      {:ok, state}
  end

end

