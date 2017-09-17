require 'pry'

class CashRegister
  attr_accessor :total, :last_transaction, :discount, :list
  attr_reader




  def initialize(discount = nil)
    @total = 0
    @list = []
    @discount = discount if discount !=nil
    @last_transaction = 0

  end

  def items
    @list
  end

  def add_item(title, price, quantity = 1)

    @last_transaction = 0
    quantity.times {@list << title}
    @last_transaction = price * quantity
    @total += @last_transaction

  end


  def apply_discount
    discounted = 0
    if @discount == nil
      "There is no discount to apply."
    else
    # binding.pry
    discounted = (@discount.to_f/100.0) * @last_transaction
    @last_transaction = @last_transaction - discounted
    @total -= discounted

    outcome = "After the discount, the total comes to $#{@last_transaction.round}."
    outcome
    end
  end


  def void_last_transaction
    @total -= @last_transaction
    @total
  end
end
