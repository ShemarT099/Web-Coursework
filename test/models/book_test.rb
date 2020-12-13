require 'test_helper'

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "don't save booking without title"
  booking = Book.new
  assert  !Book.save
end
