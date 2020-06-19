require 'pry'

class CashRegister

  attr_accessor :discount, :total, :transaction, :items

  def initialize(discount =nil)
    # sets instance variable for @total to zero
    # optionally takes an INTEGER discount
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    # returns current total
    @total
  end

  def add_item(title, price, quantity =nil)
    # accepts title, price and increases total
    # accepts optional FLOAT or INTEGER quantity
    if quantity
      quantity.times { @items << title }
      self.transaction = price*quantity
    else
      self.transaction = price
      @items << title
    end
    self.total += self.transaction
  end


  def apply_discount
    # when discount: applies discount to total, returns message with total
    # when no discount: returns error message

    if @discount
      self.total -= (self.total * @discount / 100)
      message = "After the discount, the total comes to $#{self.total}."
    else
      message = 'There is no discount to apply.'
    end
    message
  end

  def items
    # return array containing all items
    @items
  end

  def void_last_transaction
    # subtracts the last transaction from total
    self.total -= self.transaction
  end

end