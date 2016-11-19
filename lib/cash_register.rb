class CashRegister

  attr_accessor :items, :discount, :total, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    self.total = @total + price * quantity
    quantity.times do
    @last_transaction = price * quantity
    items << item
    end
  end

  def apply_discount
    if @discount != 0
      discount_amount = @discount.to_f / 100 * @total
      self.total = @total - discount_amount.to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total = @total - @last_transaction
  end
end
