json.array!(@memos) do |memo|
  json.extract! memo, :id, :content, :archived
  json.url memo_url(memo, format: :json)
end
