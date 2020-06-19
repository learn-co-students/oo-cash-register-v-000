## WHY ARE MY CHANGES NOT SAVING!!!
class CashRegister
  attr_accessor :total, :discount, :items

  CASHREGISTER = []

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @discount
    @items = []
    @previous_item_price = 0
  end

  def add_item(title, price, quantity = 1)
    @previous_item_price = price
    quantity.times{
      @items << title
    }
    @total += price * quantity
  end

  def apply_discount
    if @discount != 0
      @total = (@total - (@total * (@discount * 0.01))).to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @previous_item_price
  end

end


new_register = CashRegister.new
new_register.add_item("eggs", 1.99)
new_register.add_item("tomato", 1.76, 3)
new_register.items
