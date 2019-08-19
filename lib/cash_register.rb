
class CashRegister
  attr_accessor :total, :discount, :title, :items, :last_transaction

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity =1)
    self.total += price * quantity
    quantity.times do
    @items << title
    end
    self.last_transaction = price
  end

  def apply_discount
    if discount
      @total = @total - (@total * discount/100)

      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total = self.total - last_transaction
  end

end
