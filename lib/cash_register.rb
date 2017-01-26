class CashRegister

  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
    @transaction_tracker = []
  end

  def add_item(item, price, quantity = 1)
    if quantity == 1
      @items << item
    else quantity.times {@items << item}
    end
    price = price * quantity
    @transaction_tracker << price
    @total = @total + price
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @discount = 100 - @discount
      @discount = "0." + @discount.to_s
      @discount = @discount.to_f
      @total = @total * @discount
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def void_last_transaction
    @total = @total - @transaction_tracker.pop
  end

end
