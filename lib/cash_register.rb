require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    price = price * quantity
    @total = @total + price
    if quantity == 1
      @items << title
    else
      i = 0
      while i < quantity
        @items << title
        i += 1
      end
    end
  end

  def apply_discount
    @discount = Float(@discount) / 100 # calc percent .2
    @discount = @total * @discount #calc percent of total
    @total = @total - @discount # sub from total
    if @discount != 0
      "After the discount, the total comes to $#{Integer(@total)}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction

  end
end

#new_jawn = CashRegister.new(20)
#new_jawn.add_item("macbook", 1000)
#new_jawn.apply_discount
s
