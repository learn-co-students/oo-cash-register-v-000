class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def items
    @items
  end


  def add_item(item, price, quantity = 1)
    self.total += (price*quantity)

    quantity.times {@items << item}
    self.last_transaction = price * quantity
  end

  def apply_discount
    if discount > 0
      self.total = (@total * ((100.0 - discount.to_f)/100)).to_i
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end
  
end
