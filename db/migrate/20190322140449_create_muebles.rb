class CreateMuebles < ActiveRecord::Migration[5.2]
  def change
    create_table :muebles do |t|
      t.string :sku
      t.string :name
      t.string :category
      t.string :photo

      t.timestamps
    end
  end
end
