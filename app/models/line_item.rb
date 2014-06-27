class LineItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product
  belongs_to :cart

  def decrement_quantity
    if quantity > 1
      update_attributes({
        quantity: quantity - 1,
        total_price: total_price - product.price
      })
    else
      destroy
    end
  end
end
