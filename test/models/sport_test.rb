require 'test_helper'

class SportTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should get error" do
    variable_unknown
    assert true
  end
end
