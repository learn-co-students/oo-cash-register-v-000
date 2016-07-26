require 'pry'
class CashRegister
  attr_accessor :total, :discount

  @@items = []

  def initialize(discount=nil)
    @total = 0
    @discount = discount
  end

  def add_item(item, price, quantity=nil)
    quantity = nil || quantity
    if quantity
      self.total += price*quantity
    else
      self.total += price
    end
    @@items << item
  end

  def apply_discount
    if discount
      discount_amount = discount.to_s
      discount_amount = discount_amount.insert(0,".").to_f

      self.total = @total - (@total * discount_amount)
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @@items
  end

end
