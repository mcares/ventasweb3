class Producto < ActiveRecord::Base
  belongs_to :empresa
  has_many :ven
  has_many :vendedor, :through => :ven


   validates :nombre, :presence => { message: "No puede dejarse vacío"}
   validates :codigo, :presence => { message: "No puede dejarse vacío"}
   validates :tipo, :presence => { message: "No puede dejarse vacío"}
   validates :valor, :presence => { message: "No puede dejarse vacío"}
   validates :empresa, :presence => { message: "No puede dejarse vacío"}
end
