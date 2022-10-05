class CreateMaterials < ActiveRecord::Migration[7.0]
  def change
    create_table :materials do |t|
      t.string :name
      t.string :description
      t.integer :quantity
      t.float :unit_price
      t.boolean :is_thread

      t.timestamps
    end
  end
end
