class CashRegister
  attr_accessor :total, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @@items = []
  end

  def discount
    @discount = 20
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    quantity.times do
      @@items << title
    end
    self.last_transaction = price * quantity
  end

  def apply_discount
    if @discount != 0
      discount_sub = @discount * @total / 100
      @total -= discount_sub
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @@items
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end

end
