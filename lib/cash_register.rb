class CashRegister
  attr_accessor :total, :discount, :items, :last

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @last = [title, price, quantity]

    quantity.times do
      @items << title
    end

    price = price * quantity if quantity > 1
    @total += price
  end

  def apply_discount
    if @discount
      @total = @total - @total * (@discount.to_f / 100)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    title = @last[0]
    price = @last[1]
    quantity = @last[2]
    
    quantity.times { |i| @items.pop }
    @total = @total - price * quantity
  end
end
