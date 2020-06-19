require "pry"
class CashRegister
  attr_accessor :discount, :total, :items

  def initialize(*discount)
     @discount = discount.join.to_i
     @total = 0
     @items = []
  end

  def add_item(title, price, quantity=1)
    @total = total + price*quantity
    quantity.times {@items << title}
    @price = price
  end

  def apply_discount
      self.class.new
      if @discount > 0
        @total -= @total * (@discount.to_f / 100)
        return "After the discount, the total comes to $#{@total.to_i}."
      else
        return "There is no discount to apply."
      end
    end

  def items
    @items
  end

  def void_last_transaction
    @total = @total - @price
  end

end

 