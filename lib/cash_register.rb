class CashRegister
  attr_accessor :total, :discount
  @@items = []

  def initialize(discount = 0)
    self.items.clear
    @total = 0
    @discount = discount
  end

  def items
    @@items 
  end

  def add_item(title, price, quantity = 1)
    @price = price
    @quantity = quantity
    @title = title
    self.total += price * quantity
    transaction = []
    quantity.times {transaction << title}
    self.items << transaction
    self.items.flatten!
  end

  def apply_discount
    self.total = self.total * (1 - discount.to_f / 100)
    if discount > 0
      "After the discount, the total comes to $#{total.to_i}."
    else "There is no discount to apply."
    end
  end

  def void_last_transaction
    add_item(@title, -@price, @quantity)
  end

end