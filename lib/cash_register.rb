class CashRegister
  attr_accessor :items, :discount, :total, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, amount, quantity = 1)
    @total += amount * quantity
    quantity.times do
      @items << title
    end
    self.last_transaction = amount * quantity
  end

  def apply_discount
    if @total != 0
      @total -= (@total.to_f * @discount/100).to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= self.last_transaction
  end

end
