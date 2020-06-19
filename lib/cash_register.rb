require "pry"
class CashRegister

  attr_accessor :discount
  attr_accessor :total, :all_items


  @total = []

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @all_items = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)

      @total += price * quantity

    quantity.times do
    @all_items << title
    end
  end

  def apply_discount
    if  @discount == nil
      return "There is no discount to apply."
    else
      @total = @total - @discount * 10
      return "After the discount, the total comes to $#{@total}."
    end
    # binding.pry
  end

  def items
    @all_items
  end

  def void_last_transaction
    @total = 0
    # binding.pry
  end


end
