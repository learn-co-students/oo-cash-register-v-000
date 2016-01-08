
class CashRegister

  attr_accessor :total, :items, :discount, :last_transaction

  def initialize(discount=0, total=0)
    @total = total
    @discount = discount
    @items = []
    @price = []
  end

  def add_item(title, price, quantity=1)
    self.total += price * quantity
    quantity.times { items << title}
    self.last_transaction = price * quantity
  end

  def apply_discount
    if self.discount != 0
      @total = @total * (100 - @discount) / 100
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total -= self.last_transaction
  end
  
end





