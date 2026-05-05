defmodule ExchanTest do
  use ExUnit.Case

  test "fixture decisions" do
    signal_case_1 = %{demand: 67, capacity: 91, latency: 14, risk: 5, weight: 12}
    assert Exchan.score(signal_case_1) == 222
    assert Exchan.classify(signal_case_1) == "accept"
    signal_case_2 = %{demand: 65, capacity: 91, latency: 21, risk: 6, weight: 6}
    assert Exchan.score(signal_case_2) == 167
    assert Exchan.classify(signal_case_2) == "review"
    signal_case_3 = %{demand: 68, capacity: 71, latency: 24, risk: 11, weight: 10}
    assert Exchan.score(signal_case_3) == 132
    assert Exchan.classify(signal_case_3) == "review"
  end
end
