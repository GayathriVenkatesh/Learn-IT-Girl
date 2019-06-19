class CreateSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :searches do |t|
      t.string :title
      t.string :brand
      t.string :condition
      t.string :model
      t.decimal :min_price
      t.decimal :max_price
      t.date :date_of_delivery

      t.timestamps
    end
  end
end
