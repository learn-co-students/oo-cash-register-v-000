class CashRegister

  attr_accessor :total, :discount, :items, :last_price, :last_quantity

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    quantity.times { @items << title }
    @total += price * quantity
    @last_price = price
    @last_quantity = quantity
  end

  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      @total *= (1 - @discount / 100.0)
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @last_quantity.times {
      @total -= @last_price
      @items.pop
    }
  end

end
