require "pry"

class CashRegister

  attr_accessor :total, :discount, :cart, :items, :price

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
  end

  def self.total
    @total
  end

  def add_item(item, price, quantity = 1)
    @price = price
    @items = [item].cycle(quantity).to_a.join(" ")
    @cart << @items.split
    @total += price * quantity
  end

  def apply_discount
    if @discount > 0
      @discount = @discount/100.to_f
      self.total = @total - (@total * @discount).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @cart.flatten
  end

  def void_last_transaction
    @total -= @price
  end




end
