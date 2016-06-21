require 'pry'

class CashRegister

  attr_accessor :total, :items, :quantity, :cost, :employee_discount
  attr_reader :last_transaction

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def discount
    @discount = 20
  end

  def self.total(total)
    @total = total
  end

  def add_item(item, cost, quantity = 1)
    quantity.times {@items << item}
    @last_transaction = cost * quantity
    @total += @last_transaction
    end

    def apply_discount
        employee_discount = @total * (self.discount.to_f / 100)   
        @total = @total - employee_discount
        @total = @total.to_i
        if @total == 0
          return "There is no discount to apply."
        else
        return "After the discount, the total comes to $#{total}."
      end
    end

    def void_last_transaction
      @total -= @last_transaction
    end
end

