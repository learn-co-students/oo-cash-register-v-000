class CashRegister
  attr_accessor :total, :discount, :price, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def self.total
    @total
  end

  def add_item(title, price, quantity=1)
    self.total += price * quantity
    while quantity > 0
      @items << title
      quantity -= 1
    end
    @last_transaction = price * quantity
  end

  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      self.total -= discount*10
      return "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction
    self.total = 0
  end
end
