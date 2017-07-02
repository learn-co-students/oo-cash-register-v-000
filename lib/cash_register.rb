class CashRegister
  attr_accessor :total, :discount, :last_item_price, :items

  def initialize (discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item (item, price, quantity = 1)
    quantity.times do @items << item end
    self.last_item_price = price * quantity
    self.total += self.last_item_price
  end

  def apply_discount
    self.total = self.total - (self.total * self.discount/100)
    if self.discount > 0
      return "After the discount, the total comes to $#{self.total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.items.pop
    self.total = self.total - self.last_item_price
  end

end
