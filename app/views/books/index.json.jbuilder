json.array!(@books) do |book|
  json.extract! book, :id, :title, :author, :quantity, :checkout_length
  json.url book_url(book, format: :json)
end
