class CashRegister
  attr_accessor :discount, :items, :total, :last_transaction
  @@cash_register = []

  def initialize(discount=0)
    @discount = discount
    @total = 0
    @items = []
  end

  def add_item(item, price, quantity=1)
    self.total += price * quantity
    quantity.times do
      @items << item
    end
    self.last_transaction = price *quantity
  end

  def void_last_transaction
    self.total -= self.last_transaction
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      self.total = (total-(total*(discount.to_f/100))).to_i
      "After the discount, the total comes to $#{self.total}."
    end
  end
end
