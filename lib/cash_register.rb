require "pry"
class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @total += price * quantity
    quantity.times do
      @items << item
    end
    @last_transaction = {"item" => item, "price" => price, "qty" => quantity}

  end

  def apply_discount
    if discount
     self.total = total - (total.to_f * (discount.to_f/100)).to_i
     "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
   end
  end

  def void_last_transaction
    self.total -= self.last_transaction["price"]
  end

  def items
    @items
  end

end
