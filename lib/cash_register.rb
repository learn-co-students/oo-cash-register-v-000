class CashRegister
  attr_accessor :total, :discount, :title, :price, :quantity, :previous_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    @title = title
    self.total += price * quantity
    quantity.times do
      @items << @title
    end
    @previous_transaction = self.total
  end

  def apply_discount
    if self.discount != 0
      self.total = self.total * (100-self.discount)/100
      return "After the discount, the total comes to $#{self.total}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total -= self.previous_transaction
  end

end
