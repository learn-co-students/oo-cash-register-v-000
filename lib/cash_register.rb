require 'pry'

class CashRegister

  attr_accessor :total, :discount, :price, :applied_discount, :cart, :last_item

  def initialize(discount=0)
    @total = 0.0
    @discount = discount
    @applied_discount = 0.0
    @cart = []
    @last_item
    #@price = price

  end


  def apply_discount
      if @discount != 0
        @applied_discount = (self.price.to_f  * (self.discount.to_f/100) )
        @total -= @applied_discount
        #binding.pry
        @total = @total.to_i
        return "After the discount, the total comes to $#{self.total}."
      elsif @discount == 0
        return "There is no discount to apply."
      end

  end

  def add_item(item, price, quantity=1)
    #@item_mac = item
    @price = price
    @last_item = @price
    quantity.times do
      @cart << item
    end

    @total += self.price*quantity

  end

  def items
    return cart
  end

  def void_last_transaction
    return self.total = self.total - @last_item
  end

end
