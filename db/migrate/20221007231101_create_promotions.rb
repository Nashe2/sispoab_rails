class CreatePromotions < ActiveRecord::Migration[7.0]
  def change
    create_table :promotions do |t|
      t.string :titule
      t.string :description
      t.datetime :start_date
      t.datetime :ending_date
      t.float :discount_porcentage

      t.timestamps
    end
  end
end
