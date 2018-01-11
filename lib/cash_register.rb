class CashRegister
  attr_accessor :total, :discount, :item, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @item = []
    @last_transaction = 0
  end

  def add_item(title, price, quantity = 1)
    @last_transaction = price * quantity
    @total += last_transaction
    quantity.times { @item << title }
    # @item.fill(title, array.size, quantity)
  end

  def apply_discount
    @total -= @total * @discount / 100
    @discount == 0 ? "There is no discount to apply." : "After the discount, the total comes to $#{@total}."
  end

  def items
    @item
  end

  def void_last_transaction
    @total -= @last_transaction
  end
end
