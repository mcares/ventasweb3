class CreateVendedors < ActiveRecord::Migration
  def change
    create_table :vendedors do |t|
      t.string :rut
      t.string :nombre
      t.string :apellidoP
      t.string :apellidoM
      t.string :correo

      t.timestamps
    end
  end
end
