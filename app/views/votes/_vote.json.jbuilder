json.extract! vote, :id, :voter_id, :candidate_id, :created_at, :updated_at
json.url vote_url(vote, format: :json)
