class CashRegister
attr_accessor :total, :discount, :items, :transaction_total

  def initialize(discount = nil)
    @items = []
    @total = 0
    @discount = discount.to_f
  end

  def total
    @total
  end

  def add_item(title, price, quantity = nil)
    if quantity != nil
      @total += price * quantity
      @transaction_total = quantity * price
      quantity.times {@items << title}
    else
      @total += price
      @transaction_total = price
      @items << title
    end
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @discount = @discount / 100
      @total -= @total * @discount
      @total
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @transaction_total
  end

end
