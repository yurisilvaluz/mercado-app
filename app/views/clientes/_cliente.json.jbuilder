json.extract! cliente, :id, :nome, :data_nascimento, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
