class Empresa < ActiveRecord::Base

  validates :nombre, :rubro, :rut, :presence => { message: "No puede dejarse vacío" }


end
