class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :codigo
      t.string :nombre
      t.string :tipo
      t.integer :valor
      t.references :empresa, index: true

      t.timestamps
    end
  end
end
