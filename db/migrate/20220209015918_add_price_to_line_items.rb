class AddPriceToLineItems < ActiveRecord::Migration[5.1]
  def change
    add_column :line_items, :price, :string
  end
end
