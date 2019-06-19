class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :line_items, :instrument_id, :product_id
  end
end
