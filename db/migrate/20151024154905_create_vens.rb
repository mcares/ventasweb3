class CreateVens < ActiveRecord::Migration
  def change
    create_table :vens do |t|
      t.integer :cantidad
      t.references :vendedor, index: true
      t.references :producto, index: true
      t.references :cliente, index: true

      t.timestamps
    end
  end
end
