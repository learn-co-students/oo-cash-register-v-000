class CashRegister
  attr_accessor :amount, :total, :discount, :title, :price, :items, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    @last_transaction = price
    @total += (price*quantity)
    @items.fill(title, @items.size, quantity)

  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total -= (@total*@discount/100)
      "After the discount, the total comes to $#{total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_transaction
  end
end
