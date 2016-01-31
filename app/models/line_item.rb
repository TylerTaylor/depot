class LineItem < ActiveRecord::Base
  after_update :check_qty, if: "qty_changed?"
  belongs_to :product
  belongs_to :cart

  def total_price
    product.price * quantity
  end

  private

  def check_qty
    self.destroy if self.qty.zero?
  end
end
