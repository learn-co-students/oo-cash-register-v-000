class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, quantity = 1, price)
    self.items << item
    total_price = price * quantity
    @total += total_price
  end

  def apply_discount
    if self.discount == 0
      puts "There is no discount to apply."
    else
      discount_amt = self.total * (self.discount/100)
      self.total -= discount_amt
      puts "After the discount, the total comes to #{self.total}."
    end
  end
end
