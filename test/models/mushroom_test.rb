require 'test_helper'

class MushroomTest < ActiveSupport::TestCase

  def setup
    Rails.application.load_seed
  end

  test "filter options for :cap_shape" do
    options = ["x", "b", "s", "f", "k", "c"]
    assert_equal(options, Mushroom.filter_options[:cap_shape])
  end
  
end
