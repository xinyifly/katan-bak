require 'test_helper'

class VotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vote = create(:vote)
  end

  test "should get index" do
    get votes_url
    assert_response :success
  end

  test "should get new" do
    get new_vote_url
    assert_response :success
  end

  test "should create vote" do
    sign_in create(:user)

    assert_difference('Vote.count') do
      post votes_url, params: { vote: { candidate_id: @vote.candidate_id, voter_id: @vote.voter_id } }
    end

    assert_redirected_to vote_url(Vote.last)
  end

  test "should show vote" do
    get vote_url(@vote)
    assert_response :success
  end

  test "shouldn't vote yourself" do
    sign_in user = create(:user)

    assert_no_difference('Vote.count') do
      post votes_url, params: { vote: { candidate_id: user.id } }, as: :json
    end
    
    assert_response :unprocessable_entity
  end
end
