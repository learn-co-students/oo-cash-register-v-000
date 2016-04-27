require 'pry'

class CashRegister
  attr_accessor :total, :discount, :title, :amount, :quantity, :items, :last_transaction

  def initialize(discount = nil)
    @total = 0
    #@last_transaction = 0
    @discount = discount
    @@items = []
  end

  def add_item(title, amount, quantity = nil)
    if quantity
      @total = @total + (amount * quantity)
      @last_transaction = @total
      @@items << (title.split(" ")) * quantity
    else
      @total = @total + amount
      @last_transaction = @total
      @@items << title
    end
  end

  def apply_discount
    if @discount
      initial_discount = @discount / 100.00
      updated_discount = @total * initial_discount
      @total = @total - updated_discount
      @last_transaction << @total
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @@items.flatten
  end

  def void_last_transaction
    #binding.pry
    @total = @total - @last_transaction
  end

end
