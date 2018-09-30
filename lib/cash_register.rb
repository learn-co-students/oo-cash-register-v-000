# require 'pry'
class CashRegister
  attr_accessor :total, :discount, :items, :transactions
  
  
  def initialize(discount = 100)
    @discount = discount
    @total = 0
    @items = []
    @transactions = []
  end
  
  def add_item(title, price, quantity = 1)
    @items << ("#{title} " * quantity).split()
    @transactions << {'item' => title, 'cost' => price, 'number' => quantity, 'total' => price * quantity}
    @total += price * quantity
  end
  
  def apply_discount
    @total -= @total * @discount * 0.01
    return "After the discount, the total comes to $#{@total.to_i}." if @discount != 100
    return "There is no discount to apply."
  end
  
  def items
    @items.flatten
  end
  
  def void_last_transaction
    @total -= @transactions.pop['total']
  end
end