require "pry"
class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    self.total += price * quantity
    quantity.times do
      self.items << item
    end
    self.last_transaction = {"item" => item, "price" => price, "qty" => quantity}
  end

  def apply_discount
    if @discount
     self.total = total - (@total.to_f * (@discount.to_f/100)).to_i
     "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
   end
  end

  def void_last_transaction
    self.total -= self.last_transaction["price"] * self.last_transaction["qty"]
  end

  def items
    @items
  end

end
