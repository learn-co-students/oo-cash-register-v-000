class CashRegister

  attr_reader :discount, :items
  attr_accessor :total

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = 0
  end

  def add_item(item, cost, quantity=1)
    quantity.times {@items << item}
    @last_transaction = cost * quantity
    @total += @last_transaction
  end

  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      @total *= 1.0 - (discount / 100.0)
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def void_last_transaction
    @total -= @last_transaction
  end
end
