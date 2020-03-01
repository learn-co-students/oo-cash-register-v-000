require 'pry'

class CashRegister
  attr_accessor :previous_total, :cash_register, :title, :price, :items, :discount, :cash_register_with_discount, :total

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    # binding.pry
    @items = []
  end

  # def total(total)
  #   new_total = total.each { |t| t += 1 }
  #   new_total
  # end
  # binding.pry

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
     quantity.times do
      @items << title
     end
    self.previous_total = price * quantity
  end

  def apply_discount
    # item == item.to_i ? item.to_i : item
     if self.discount > 0
      self.total -= ((discount.to_f / 100)*1000).to_i
      "After the discount, the total comes to $#{total}."
     else
      "There is no discount to apply."
     end

  end

  def items
    @items
  end

  def void_last_transaction
   self.total = self.total - self.previous_total
  end

end
