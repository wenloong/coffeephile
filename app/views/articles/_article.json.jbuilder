json.extract! article, :id, :title, :post, :numLikes, :numComments, :img, :username, :created_at, :updated_at
json.url article_url(article, format: :json)
