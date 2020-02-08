require 'test_helper'

class PoisonProbabilityTest < ActiveSupport::TestCase

  test "probabily distribution" do
    p = PoisonProbability.new(2, 3)
    assert_equal(0.4, p.probability)
  end

  test "division by zero" do
    p = PoisonProbability.new(0,0)
    assert_equal(0, p.probability)
  end
  
end
