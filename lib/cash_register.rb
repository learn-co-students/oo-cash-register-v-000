class CashRegister

  attr_accessor :total, :discount, :price, :title, :last_transaction

  

  def initialize(discount = 0)
    self.discount = discount
    @total = 0
    @array = []
    @last_transaction = 0
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    self.total = (price * quantity) + self.total
    quantity.times do
    @array.push(title)
    @last_transaction = self.total
    end
  end

  def apply_discount
    if self.discount == 0
      return "There is no discount to apply."
    else
    @total = self.total - (self.discount * 10)
    return "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @array
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end

end
