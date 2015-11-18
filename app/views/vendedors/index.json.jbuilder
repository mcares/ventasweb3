json.array!(@vendedors) do |vendedor|
  json.extract! vendedor, :id, :rut, :nombre, :apellidoP, :apellidoM, :correo
  json.url vendedor_url(vendedor, format: :json)
end
