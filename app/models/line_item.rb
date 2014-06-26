class LineItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product
  belongs_to :cart

  def decrement_quantity
    if quantity > 1
      update_attribute(:quantity, quantity - 1)
    else
      destroy
    end
  end
end
