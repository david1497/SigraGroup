json.extract! article, :id, :name, :content, :article_type, :created_at, :updated_at
json.url article_url(article, format: :json)
