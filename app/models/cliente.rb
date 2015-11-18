class Cliente < ActiveRecord::Base
  belongs_to :usuario

  has_many :ven
  has_many :vendedor, :through => :ven
  has_many :producto, :through => :ven


validates :nombre, :apellidoP ,:apellidoM, :direccion, :rut, :presence => { message: "No puede dejarse vacío" }
end
