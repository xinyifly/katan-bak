json.array! @ranks do |rank|
  json.candidate rank.candidate
  json.score rank.score
end
