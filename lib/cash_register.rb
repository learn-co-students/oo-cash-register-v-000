class CashRegister
  attr_accessor :total, :discount, :title, :price, :quatity, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    self.total += price.to_r * quantity.to_r
    quantity.times do
      items << title
    end
    @@last_transaction = price * quantity
  end

  def apply_discount
    if self.discount != 0
      @discount = self.total.to_f * @discount.to_f * 0.0100
      @total = self.total.to_f - discount.to_f
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total = self.total - @@last_transaction
  end

end
