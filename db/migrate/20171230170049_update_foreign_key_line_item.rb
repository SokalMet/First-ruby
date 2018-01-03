class UpdateForeignKeyLineItem < ActiveRecord::Migration[5.1]
  def change
    # remove the old foreign_key
    remove_foreign_key :line_items, :products

    # add the new foreign_key
    add_foreign_key :line_items, :products, on_delete: :cascade
  end
end
