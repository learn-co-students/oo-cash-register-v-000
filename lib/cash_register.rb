require 'pry'
class CashRegister
  attr_accessor :discount, :total, :items, :last_transaction

  def initialize(discount=0) #because this is optional we're setting a default value that can be overriden
    @total = 0
    @discount = discount #otherwise discount will be nil
    @items = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity=1)
    @total = @total + (price * quantity)
    quantity.times do
      @items << title #wants repeat items
    end
    self.last_transaction = price*quantity #build this into this method since the added item will be the most recent transaction
  end

  def apply_discount
    if @discount > 0
      @total = (@total - ((@discount/100.0) * @total)).to_i
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= self.last_transaction
  end


end
