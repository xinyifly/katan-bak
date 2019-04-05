class RankingController < ApplicationController
  def index
    @ranks = Vote.group(:candidate_id).select(
      :candidate_id, 'count(*) as score'
    ).order('score desc')
  end
end
