class AddTelefonoToClientes < ActiveRecord::Migration
  def change
    add_column :clientes, :telefono, :integer
  end
end
