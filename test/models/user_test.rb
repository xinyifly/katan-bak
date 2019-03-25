require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "vote" do
    voter = create(:user)
    candidate = create(:user)

    assert_difference('Vote.count') do
      voter.vote(candidate)
    end

    assert_no_difference('Vote.count') do
      voter.vote(voter)
    end
  end
end
