json.extract! produto, :id, :nome, :preco, :descricao, :created_at, :updated_at
json.url produto_url(produto, format: :json)
