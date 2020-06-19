class CashRegister

  attr_accessor :total, :discount, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items =[]
    @last_transaction = []
  end
  
  def add_item(title,price,quantity = 1)
    
    @total += quantity * price
    quantity.times {@items << title}
    @last_transaction = [title, price, quantity]

    
    
  end

  
  def apply_discount
    if
      discount == 0
      "There is no discount to apply."
    else
      total_discount = total * (discount / 100.0)
      self.total = total - total_discount
      "After the discount, the total comes to $#{self.total.round}."
    end
  end

def items
  @items
 end

def void_last_transaction
 @total -= last_transaction[1] * last_transaction[2]
 last_transaction[2].times do
 items.delete_at(self.items.index(last_transaction[0]) || self.items.count)
 end
end
 

end




