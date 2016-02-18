require 'pry'
class CashRegister
  attr_accessor :total, :discount, :last_item_price
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @all_items = []
  end

  def add_item(title, price, quantity = 1)
    self.total += price*quantity
    quantity.times do 
      @all_items << title
    end
    self.last_item_price = price
  end

  def apply_discount
    if self.discount != 0
      discount_amount = (self.discount.to_f/100)*self.total
      self.total = self.total-discount_amount
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @all_items
  end

  def void_last_transaction
    self.total = self.total-self.last_item_price
  end
end
