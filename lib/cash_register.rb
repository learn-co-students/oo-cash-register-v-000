class CashRegister
  attr_accessor :discount, :total, :quantity, :all_items, :all_prices


  def initialize(discount=0)
    @total = 0
    @discount = discount
    self.all_items = []
    self.all_prices = []
  end

  def add_item(title, price, quantity=1)
    @title = title
    @price = price
    @quantity = quantity
    self.total += (@price * @quantity)
    quantity.times {self.all_items << title}
    quantity.times {self.all_prices << price}
  end

  def apply_discount
    if self.discount > 0
      self.total = self.total*((100-self.discount)/100.0)
      "After the discount, the total comes to $800."
    else
      "There is no discount to apply."
    end
  end

  def items
    self.all_items
  end

  def void_last_transaction
    last_transaction = @all_prices.pop
    self.total -= last_transaction
  end

end

