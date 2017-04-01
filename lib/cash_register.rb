class CashRegister

  attr_accessor :total, :discount, :quantity

  def initialize(total = 0)
    @total = total
    @discount = 20
  end

  def add_item(title, price, quantity = 0)
    quantity == 0 ? @total = self.total + price : @total = price * quantity + self.total
  end

  def apply_discount
    discount_percentage = 1 - (@discount / 100)
    @total = self.total * discount_percentage
  end


end
