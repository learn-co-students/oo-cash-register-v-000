class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount=0)
    @total = 0
    @items = []
    @discount = discount
  end

  def add_item(item, price, quantity=1)
    cost = price*quantity
    @total += cost
    quantity.times { @items << item }
    @last_transaction = cost
  end

  def apply_discount
    if @discount > 0
      @total = @total * (100 - discount).to_f/100
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @last_transaction
  end
end
