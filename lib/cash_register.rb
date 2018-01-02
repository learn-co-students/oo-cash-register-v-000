class CashRegister
  attr_accessor :total, :items, :last_item_price

  def initialize(discount = 0)
    @total = 0.00
    @discount = discount
    @items = []
  end

  def discount
    @discount
  end

  def total
    @total
  end

  def items
    @items
  end

  def add_item(title, price, quantity = 1)
    self.total += price*quantity
    quantity.times do
    items << title
    end
    @last_item_price = price
  end

  def apply_discount
    if discount != 0
      self.total = (total * ((100.0 - discount)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total = @total - @last_item_price
  end

end
