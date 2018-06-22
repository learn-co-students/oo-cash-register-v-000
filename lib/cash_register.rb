class CashRegister
  
  attr_accessor :discount, :total, :last_transaction, :items
  
  def initialize(discount = 0)
    @discount = discount
    @items = []
    @total = 0
    @transaction_history = 0
  end
  
  def add_item(item, price, quantity = 1)
    self.total += price * quantity
    quantity.times do @items << item
    end
  end
  
  def apply_discount
    if @discount != 0
      @total = (@total * ((100 - @discount.to_f) / 100)).to_i
      return "After the discount, the total comes to $#{@total}."
    elsif
      @discount == 0
      return "There is no discount to apply."
    end
  end
  
  
  def void_last_transaction
    @items.pop[-1]
    @total.pop[-1]
  end
  
end
