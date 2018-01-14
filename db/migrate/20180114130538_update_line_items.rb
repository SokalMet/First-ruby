class UpdateLineItems < ActiveRecord::Migration[5.1]
  def change
    change_column :line_items, :product_id, :integer
    change_column :line_items, :cart_id, :integer
  end
end
