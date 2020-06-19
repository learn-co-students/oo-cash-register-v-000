class CashRegister

  attr_accessor :total, :discount, :last_transaction, :items

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title,price, quantity = 1)
    self.total = self.total + price * quantity
    quantity.times {@items << title}
    self.last_transaction = price * quantity
  end

  def apply_discount
    if discount != 0
      @discount = @discount.to_f/100 * self.total
      self.total = self.total - @discount
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end
end
