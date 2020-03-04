class CashRegister
attr_accessor :total, :items
attr_reader :discount

  def initialize(discount=nil)
    @total = 0
    @discount = discount if discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    quantity.times do
      @total += price
      @items << item
      @last_transaction = {item: item, price: price, quantity: quantity}
    end
  end

  def apply_discount
    return "There is no discount to apply." if !@discount
    @total = @total / 100 * (100 - @discount)
    "After the discount, the total comes to $#{@total}."
  end

  def void_last_transaction
    @last_transaction[:quantity].times do
      @total -= @last_transaction[:price]
      @items.pop
    end
    @last_transaction = nil
  end
end
