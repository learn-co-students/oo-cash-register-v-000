require 'pry'

class CashRegister

  attr_accessor :discount, :total, :quantity, :title, :price, :last_transaction

  def initialize(discount = 0)
    @total = 0
    self.discount = discount
    @@item_array = []
    @@last_transaction = 0
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 0)
    self.quantity = quantity
    self.title = title
    if quantity != 0
      counter = 0
      while counter < quantity   
        @@item_array << title
        counter += 1
      end
      @total += price * quantity  
      @@last_transaction = price * quantity
    else
      @@item_array << title
      @total += price
      @@last_transaction = price
    end
  end

  def apply_discount
    if self.discount != 0
      @total -= (total * self.discount/100)
      "After the discount, the total comes to $" + "#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @@item_array
  end

  def void_last_transaction
    @total -= @@last_transaction
  end

end






