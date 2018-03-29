
class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def items
    @items
  end

  def add_item(title, amount, quantity=1)
    @total += (amount * quantity)
      quantity.times do
      @items << title
    end
    self.last_transaction = amount * quantity
  end
  def apply_discount
    if @discount > 0
      @total -= ((@discount.to_f/100.0) * @total).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= self.last_transaction
  end
end
