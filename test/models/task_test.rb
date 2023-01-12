require "test_helper"

class TaskTest < ActiveSupport::TestCase
  test "should not save task withouth title" do
    task = Task.new
    assert_not task.save, "Saved the task without a name"
  end


   context 'validations' do
    should validate_presence_of(:period)
    should validate_presence_of(:status)
    should validate_presence_of(:deadline)
    should validate_length_of(:name).
      is_at_least(6).is_at_most(100)
  end

end
