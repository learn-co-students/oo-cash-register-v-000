class CashRegister

  attr_accessor :total, :discount, :title, :price, :quantity, :items, :last_price

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    quantity.times do
      @items << title
    end
    @last_price = price * quantity
  end

  def apply_discount
    if @discount == nil
      "There is no discount to apply."
    else
      percentage = @discount.to_f/100
      @total = @total - (@total * percentage)
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end


  def void_last_transaction
    @total = @total - @last_price
  end
end
