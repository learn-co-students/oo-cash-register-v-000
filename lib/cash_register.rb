require 'pry'
class CashRegister

  attr_accessor :discount, :total, :last_transaction

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @all_items = []
  end


  def add_item(title, price, quantity = 1)
    self.total=(total + price * quantity)
    quantity.times {@all_items << title}
    self.last_transaction={:price => price, :quantity => quantity}
  end

  def apply_discount
    if discount != 0
      self.total=(total - (0.01 * discount * total))
      "After the discount, the total comes to $#{self.total.to_i}."
    else self.total
      "There is no discount to apply."
    end
  end

  def items
    @all_items
  end

 def void_last_transaction
   price = last_transaction[:price]
   quantity = last_transaction[:quantity]
   self.total=(total - price * quantity)
   quantity.times {@all_items.pop}
 end

end
