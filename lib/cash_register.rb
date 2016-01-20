require 'pry'
class CashRegister

  attr_accessor :total, :discount, :add_item, :last_item



  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @item = item
    
    
    item = @total += price * quantity
    
    quantity.times do
    @items.push(@item)
    @last_item = price * quantity
  end

  end

  def apply_discount

    if @discount == 0
      "There is no discount to apply."
    else
      @total -= @total * @discount/100.to_f
      "After the discount, the total comes to $#{total.to_i}."
    end
  end

  def items
    @items 
  end

  def void_last_transaction
    @total -= @last_item
  end



  




end

