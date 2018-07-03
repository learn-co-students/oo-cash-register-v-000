# require 'pry'
class CashRegister
  attr_accessor :total, :discount, :item, :price, :discounted_amount
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @discounted_amount = discounted_amount
  end

  def add_item(item, price,quanity = 1)
    quanity.times do 
      @items << item 
    end
    @items_total = price * quanity 
    @total += @items_total
    # # @price - price 
    # title = item.new
  end

  def apply_discount
    #discount of 20 means 20% off of the total 
    if @discount > 0
      @discounted_amount = @total * self.discount.to_f/100
      new_total = @total -= discounted_amount
      "After the discount, the total comes to $#{new_total.to_i}."
    else 
      "There is no discount to apply."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    last_item = @items.pop
    @total -= @items_total
  end
    
  
  
end
