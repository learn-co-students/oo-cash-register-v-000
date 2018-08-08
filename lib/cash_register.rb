#require 'pry'
class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
  #   self.items << title
  # end

  quantity.times do
     self.items << title
  end
end 

  def apply_discount
    if self.discount == 0
      return "There is no discount to apply."
    else
      num = (self.discount.to_f / 100)
      new_num = num * self.total
      @total = self.total - new_num
      return "After the discount, the total comes to $#{@total.to_i}."
    end
    #binding.pry
  end

end
