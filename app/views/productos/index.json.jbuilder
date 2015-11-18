json.array!(@productos) do |producto|
  json.extract! producto, :id, :codigo, :nombre, :tipo, :valor, :empresa_id
  json.url producto_url(producto, format: :json)
end
