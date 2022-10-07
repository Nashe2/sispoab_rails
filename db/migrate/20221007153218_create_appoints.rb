class CreateAppoints < ActiveRecord::Migration[7.0]
  def change
    create_table :appoints do |t|
      t.integer :quantity

      t.timestamps
    end
  end
end
