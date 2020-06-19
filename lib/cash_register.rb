class CashRegister

  attr_reader :discount, :items
  attr_accessor :total, :last_transaction
  
  def initialize(discount=0.00)
    @total = 0.00
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity=1)
    self.total += price * quantity
    quantity.times {self.items << item}
    self.last_transaction = price * quantity
  end

  def apply_discount
    if discount == 0
      return "There is no discount to apply."
    else
      self.total -= self.total * (self.discount * 0.01)
      "After the discount, the total comes to $#{self.total.to_i}."
    end
  end

  def void_last_transaction
    self.total -= self.last_transaction
  end

end