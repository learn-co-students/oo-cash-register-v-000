require 'pry'

class CashRegister

  attr_accessor :total
  attr_reader :items

  def initialize(discount=0)
    @discount = discount
    @total = 0
    @items = []
  end

  def discount
    @discount
  end


  def add_item(item, price, quantity=0)
    @price = price
    if quantity > 0
      @total += price * quantity
      quantity.times { self.items.push(item) }
    else
      @total += price
      @items.push(item)
    end
  end

  def apply_discount
    if @discount > 0
      self.total = self.total - self.total/100 * self.discount
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total = @total - @price
  end




end
