class CreateAppoints < ActiveRecord::Migration[7.0]
  def change
    create_table :appoints do |t|
      t.integer :quantity
      #t.belongs_to :material, index:true
      #t.belongs_to :person, index: true
      t.references :person, null: false, foreign_key: true
      t.references :material, null: false, foreign_key: true

      t.timestamps
    end
  end
end
