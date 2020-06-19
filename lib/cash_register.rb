require 'pry'

class CashRegister

  attr_accessor :total, :discount, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @list = []
    @last_transaction = last_transaction
  end


  def add_item(title, price, quantity=1)
    @price = price
    @title = title
    @quantity = quantity
    quantity.times {@list << title}
    self.total = total + (price * quantity)
    return self.total
  end

  def apply_discount
    @total = total
    if @discount != 0
      self.total = @total - (@total * (@discount / 100.0)).floor
      return "After the discount, the total comes to $#{total}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @list
  end

  def void_last_transaction
     self.total = total - (@price * @quantity)
     return self.total
  end

end
