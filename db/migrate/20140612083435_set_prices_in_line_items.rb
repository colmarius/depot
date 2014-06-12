class SetPricesInLineItems < ActiveRecord::Migration
  def up
    set_price_from_total_price_in_line_items
  end

  def down
    unset_price_in_line_items
  end

  private

  def set_price_from_total_price_in_line_items
    LineItem.all.each do |item|
      item.price = item.total_price
      item.save!
    end
  end

  def unset_price_in_line_items
    LineItem.all.each do |item|
      item.price = 0
      item.save!
    end
  end
end
