require "pry"

class CashRegister
attr_accessor :cash_register, :total, :cash_register_with_discount, :last_transaction

  def initialize(discount = 0.00)
    @total = 0.00
    @discount = discount
    @items = []
  end

  def discount
    @discount
  end


  def total
    @total
  end

  def add_item(item, num, optional = 1)
    optional.times do
      @items << item
    end
      @total += (num*optional)
      @last_transaction = (num*optional)
      @total
  end

  def apply_discount
    percent = (100 - discount)/100.00

    @total *= percent
    if discount == 0.00
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{@total.round}."
  end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_transaction
    
    @total
  end




end
