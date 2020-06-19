class CashRegister

  attr_accessor :total, :discount, :basket, :sale_amount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @basket = []

  end

  def add_item(title, price, quantity = 1)
    self.sale_amount = (price * quantity)
    self.total += self.sale_amount
    quantity.times do
      @basket << title
    end
  end

  def apply_discount
    if @discount != 0
      self.total -= (self.sale_amount * 0.2)
      self.total
      message = "After the discount, the total comes to $#{total.to_i}."
    else
      message = "There is no discount to apply."
    end
    message
  end

  def items
    @basket
  end

  def void_last_transaction
    self.total -= self.sale_amount
  end

end
