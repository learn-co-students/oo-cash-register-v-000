require 'pry'
class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction


  def initialize(discount = nil)
    @items = []
    @total = 0
    @discount = discount

  end

  def add_item(item, price, quantity = nil)

    if quantity == nil
      @items << item
      @last_transaction = price
      self.total += @last_transaction
    else
      quantity.times {@items << item}
      @last_transaction = price*quantity
      self.total += @last_transaction
    end
  end

  def apply_discount
    if @discount == nil
      return "There is no discount to apply."
    else
      discount_amount = @total * (@discount/100.0)
    self.total -= discount_amount
    return "After the discount, the total comes to $#{@total.round}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total -= @last_transaction
  end
end
