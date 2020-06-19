class CashRegister
  attr_accessor :items, :discount, :total, :last_transaction

  @@list = []

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @quantity = quantity
    self.total += price * @quantity
    @price = price
    quantity.times do
      @items << title
    end
    @last_transaction = price * quantity
  end

  def apply_discount
    if @discount != 0
      self.total = self.total - (self.total * @discount/100.to_f).to_i
    return "After the discount, the total comes to $#{self.total}."
  else
    return "There is no discount to apply."
  end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total = self.total - @last_transaction
  end
end
