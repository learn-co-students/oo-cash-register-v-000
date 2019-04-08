require 'pry'
class CashRegister
  attr_accessor :total, :discount, :items, :price, :quantity

  # @@item = [] this was wrong

  def initialize(discount = 0)
    @items = []
    @total = 0
    @discount = discount

  end

  def add_item(item, price, quantity = 1)

    # @title = title - this was not needed
    # @price = price - this was not needed
    # @quantity = quantity - this was not needed

    self.total += price * quantity
    quantity.times do
      @items << item
    end
    # @@item << self
  end

  def apply_discount
    if discount > 0
      self.total = total - (total * discount/100)
      #self.total = (total * ((100 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items

    # i.map { |t| t.title }  - wrong way to do this
    # # self.map {|i| i.title } - wrong way to do this
    end

#binding.pry
end
