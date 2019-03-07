json.array! @candidates do |candidate|
  json.merge! candidate.as_json
  json.score candidate.score
end
