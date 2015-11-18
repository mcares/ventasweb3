json.array!(@empresas) do |empresa|
  json.extract! empresa, :id, :rut, :nombre, :rubro, :direccion
  json.url empresa_url(empresa, format: :json)
end
