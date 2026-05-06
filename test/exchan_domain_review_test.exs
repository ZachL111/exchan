defmodule Exchan.DomainReviewTest do
  use ExUnit.Case

  test "domain review lane" do
    item = %{signal: 75, slack: 27, drag: 10, confidence: 50}
    assert Exchan.DomainReview.score(item) == 197
    assert Exchan.DomainReview.lane(item) == "ship"
  end
end
