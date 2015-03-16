require 'test_helper'

class StatusTest < ActiveSupport::TestCase
  test "that a status requires content" do 
   status = Status.new
   assert !status.save
   assert !status.errors[:content].empty?
  	
  end

  test "content at least two letters long" do
    status = Status.new
    status.content = "H"
    assert !status.save
    assert !status.errors[:content].empty?
  end

  test "status must have user id" do
  	status = Status.new
    status.content = "Hello"
    assert !status.save
    assert !status.errors[:user_id].empty?
  end
end
