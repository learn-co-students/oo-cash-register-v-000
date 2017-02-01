class CashRegister
  attr_accessor :total, :discount, :items, :title, :price, :quantity, :last_transaction

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    self.title = title
    self.price = price
    self.quantity = quantity
    @total += price * quantity
    quantity.times {@items << title}
    self.last_transaction = [title, price, quantity]
  end

  def apply_discount
    if @discount == nil
      "There is no discount to apply."
    elsif @discount > 0 && @total != 0
      @total -= (@total * (@discount.to_f/100).to_f).to_i
      "After the discount, the total comes to $#{@total}."
    end
  end

  def void_last_transaction
    if @title = @items.last
      @total -= (self.last_transaction[1] * self.last_transaction[2])
    end
  end
end
