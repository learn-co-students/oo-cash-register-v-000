require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items, :all, :transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @all =[]
    @transaction = 0
  end

  def add_item(name, price, quantity = 1)
    @total += (price*quantity)
    @transaction = (price*quantity)
    quantity.times do |x|
      @all << name
    end
    # binding.pry
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    end
    employee_discount = (@discount.to_f/100)
    @total -= (@total.to_f * employee_discount)
    # binding.pry
    return "After the discount, the total comes to $#{@total.to_i}."
    # @total
  end

  def items
    @all
  end

  def void_last_transaction
    @total -= @transaction
  end
end
