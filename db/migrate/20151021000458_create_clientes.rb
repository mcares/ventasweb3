class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :rut
      t.string :nombre
      t.string :apellidoP
      t.string :apellidoM
      t.string :direccion
      t.string :comuna

      t.timestamps
    end
  end
end
