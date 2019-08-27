class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @total = 0.0
    @discount = discount
    @items = []
  end

  def items
    @items.collect do |item|
      item[0]
    end
  end

  def add_item(title, price, quantity = 1)
    self.total += (price * quantity)
    quantity.times do @items << [title, price] end
  end

  def apply_discount
    if discount > 0
      self.total -= discount
      "After the discount, the total comes to $#{total.to_s.split('.')[0]}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= @items.last[1].to_f
  end
end
