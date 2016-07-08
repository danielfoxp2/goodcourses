defmodule FirstSpec do
  use ESpec

  it "realiza a multiplicacao de dois numeros" do
    expect(2*2).to eq(4)
    expect(2*3) |> to eq(6)
    4*4 |> should(eq 16)
  end

  it "realiza mais um teste" do
    2+2 |> should(eq 4)
  end
end
