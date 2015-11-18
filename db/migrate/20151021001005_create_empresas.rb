class CreateEmpresas < ActiveRecord::Migration
  def change
    create_table :empresas do |t|
      t.string :rut
      t.string :nombre
      t.string :rubro
      t.string :direccion

      t.timestamps
    end
  end
end
