json.array!(@vens) do |ven|
  json.extract! ven, :id, :cantidad, :vendedor_id, :producto_id, :cliente_id
  json.url ven_url(ven, format: :json)
end
