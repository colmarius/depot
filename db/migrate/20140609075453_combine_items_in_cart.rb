class CombineItemsInCart < ActiveRecord::Migration
  def up
    replace_multiple_items_for_product_with_single_item
  end

  def down
    split_items_with_with_more_quantities_into_multiple_itmes
  end

  private

  def replace_multiple_items_for_product_with_single_item
    Cart.all.each do |cart|
      sums = cart.line_items.group(:product_id).sum(:quantity)

      sums.each do |product_id, quantity|
        if quantity > 1
          cart.line_items.where(product_id: product_id).delete_all

          item = cart.line_items.build(product_id: product_id)
          item.quantity = quantity
          item.save!
        end
      end
    end
  end

  def split_items_with_with_more_quantities_into_multiple_itmes
    LineItem.where("quantity > 1").each do |line_item|
      line_item.quantity.times do
        LineItem.create({
          cart_id: line_item.cart_id,
          product_id: line_item.product_id,
          quantity: 1
        })
      end

      line_item.destroy
    end
  end
end
