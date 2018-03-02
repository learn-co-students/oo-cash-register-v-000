require "pry"

class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction




  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def add_item(item_name, price, quantity = 1)

    quantity.times do
      @items << item_name
      @total = @total + price
    end
    self.last_transaction = price

  end

  def apply_discount
    percent = @discount.to_f/100
    success = "After the discount, the total comes to $"
    no_discount = "There is no discount to apply."

    if @discount != nil
      @total = (@total - (@total * percent)).to_i
      success + "#{@total}."
    else
      #@total = (@total - (@total * percent)).to_i
      no_discount
    end
  end


  def void_last_transaction
    self.total = self.total - self.last_transaction
  end

end # => CashRegister End
