require "pry"

class CashRegister
  attr_accessor :total, :discount, :quantity, :items, :last_transaction
  #attr_accessor defines methods that set and get those instance variables...

  def initialize(discount = nil)
    @total = 0
    if discount != nil
      @discount = discount
    end

    @items = []

  end


  def add_item(title, price, quantity = 1)
    if quantity == 1
      @total += price
    else
      new_price = price * quantity
      @total += new_price
    end

    if quantity == 1
      @items << title
    else
      quantity.times { @items << title}
    end

    @last_transaction = price

  end

  def apply_discount
    if @discount == nil
      "There is no discount to apply."
    else
      discounted = 1 - @discount / 100.to_f
      @total = @total * discounted
      "After the discount, the total comes to $#{@total.floor}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end

end
