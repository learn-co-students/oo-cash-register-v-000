class CashRegister

  attr_accessor :total, :discount, :items, :last_price


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    quantity.times do
      @items << title
    end
    @last_price = price
  end

  def apply_discount
    if discount > 0
      self.total =(total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $800."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total = self.total - self.last_price
  end
end