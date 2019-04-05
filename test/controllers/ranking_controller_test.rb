require 'test_helper'

class RankingControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ranking_url
    assert_response :success
  end

end
