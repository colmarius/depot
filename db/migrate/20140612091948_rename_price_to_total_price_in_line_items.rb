class RenamePriceToTotalPriceInLineItems < ActiveRecord::Migration
  def change
    rename_column :line_items, :price, :total_price
  end
end
