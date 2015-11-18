json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :rut, :nombre, :apellidoP, :apellidoM, :direccion, :comuna
  json.url cliente_url(cliente, format: :json)
end
