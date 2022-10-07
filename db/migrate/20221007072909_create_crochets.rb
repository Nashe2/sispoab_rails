class CreateCrochets < ActiveRecord::Migration[7.0]
  def change
    create_table :crochets do |t|
      t.integer :ending_price
      t.boolean :sale

      t.timestamps
    end
  end
end
