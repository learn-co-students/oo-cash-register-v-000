require 'pry'
class CashRegister
  attr_accessor  :discount, :total, :add_item, :apply_discount, :items

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity=1)

    quantity.times do
      @items << item
    end

    @total += (price * quantity)
     #binding.pry if item == "tomato" && quantity == 3
  end

  def apply_discount
    #binding.pry
    if self.discount != 0
      self.total -= ((self.total* self.discount)/100)
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def items

    @items
  end

  def void_last_transaction
    #binding.pry
    @items.pop
    @total -= @total
  end

end
