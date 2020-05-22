class CashRegister
  attr_accessor :discount, :total, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    quantity.times do
      @items << title
    end
    @last_transaction = price * quantity
  end

  def apply_discount
    if discount == 0
      return "There is no discount to apply."
    else
      discount_amount = @discount * 10
      @total = total - discount_amount
      return "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = total - @last_transaction
  end

end
