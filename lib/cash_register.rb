class CashRegister
  attr_accessor :total, :discount, :items, :price, :quantity, :last_transaction

  def initialize(discount=0)
    @total = 0
    @last_transaction = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    @title = title
    @price = price
    @quantity = quantity
    @last_transaction = price * quantity
    @total += last_transaction
    until quantity == 0 do
      @items << title
      quantity -= 1
    end
  end

  def apply_discount
    @total -= @discount*10
    if @discount > 1
      "After the discount, the total comes to $#{total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= last_transaction
  end

end
