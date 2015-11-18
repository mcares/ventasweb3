class Ven < ActiveRecord::Base
  belongs_to :vendedor
  belongs_to :producto
  belongs_to :cliente

    validates :cantidad => { message: "No puede dejarse vacío" }
end
