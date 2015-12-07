class CashRegister
  attr_accessor :total, :discount, :title, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = []
  end

  def add_item(title, price, quantity = 1)
    @title = title
    @total += price * quantity
    quantity.times {@items << title}
    @last_transaction << price * quantity

  end

  def apply_discount
    if @discount > 0 
      @total -= (@total * @discount / 100)
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_transaction.delete(@last_transaction.last)
  end
end
