class CashRegister

  attr_accessor :total, :discount, :items, :last_transaction
  attr_reader :title, :price

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    quantity.times{@items << title}
    self.total += price * quantity
    self.last_transaction = price * quantity
  end

  def apply_discount
    self.total = total - (total * discount.to_i/100.to_f)
    if @total > 0
      "After the discount, the total comes to $#{total.round}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end

end
