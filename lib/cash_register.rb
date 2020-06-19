class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = []
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    quantity.times do @items << title end
    @last_transaction = [title, price, quantity]
  end

  def apply_discount
    if @discount == 0
      message = "There is no discount to apply."
    else
      total = @total.to_f - (@total.to_f * (@discount.to_f / 100))
      @total = total.to_i
      message = "After the discount, the total comes to $#{@total}."
    end
    message
  end

  def void_last_transaction
    @total -= @last_transaction[1] * @last_transaction[2]
  end

end
