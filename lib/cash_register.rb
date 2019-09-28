class CashRegister

  require 'pry'

  attr_accessor :discount, :total, :last_transaction


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @all_items = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @total = total + (price * quantity)
    @all_items.concat([title]*quantity)
    @last_transaction = price
  end

  def apply_discount
    if discount == 0
       "There is no discount to apply."
    else
        self.total = total - (total * discount/100)
        "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @all_items
  end

  def void_last_transaction
    @total = @total - @last_transaction
    # binding.pry
  end

end
