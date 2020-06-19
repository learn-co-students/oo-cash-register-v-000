class CashRegister
  attr_accessor :total, :discount

  def initialize(*discount)
    @items = []
    @total = 0
    @discount = discount[0]
    @last_transaction = []
  end

  def add_item(title, price, quantity=1)
    transaction_amount = price * quantity
    @last_transaction << transaction_amount
    @total += transaction_amount
    quantity.times do
      @items << title
    end
  end

  def apply_discount
    if @discount
      @total = @total - (@total * (0.01 * @discount))
      "After the discount, the total comes to $#{@total.round}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @total - @last_transaction.last
  end

end
