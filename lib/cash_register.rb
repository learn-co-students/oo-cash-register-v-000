class CashRegister
  attr_accessor :total, :discount, :last_item_cost, :items
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def total
    @total
  end
  
  def add_item(title, price, quantity = 1)
    quantity.times do @items << title
    end
    @total += price * quantity
    @last_item_cost = price
  end
  
  def apply_discount
    @total -= (@total * (@discount.to_f * 0.01))
    @discount == 0 ? "There is no discount to apply." : "After the discount, the total comes to $#{@total.to_i}."
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    @total -= @last_item_cost
  end
  
end
