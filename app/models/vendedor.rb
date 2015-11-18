class Vendedor < ActiveRecord::Base
  has_many :ven
  has_many :producto, :through => :ven
  validates :nombre, :apellidoP ,:apellidoM, :correo, :rut,:presence => { message: "No puede dejarse vacío" }
end
