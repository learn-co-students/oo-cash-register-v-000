class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount=0)
    @total = 0
    @items = []
    @discount = discount
    @last_transaction = {item: "", cost: 0}

  end
  def add_item(title, price, quantity=1)
    quantity.times {@items << title}
    cost = price * quantity
    @total += cost
    @last_transaction[:cost] = cost
  end
  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total = @total * (100-discount)/100
      "After the discount, the total comes to $#{@total}."
    end
  end
  def void_last_transaction
    @total -= @last_transaction[:cost]

  end
end
