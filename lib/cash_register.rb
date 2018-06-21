class CashRegister
  
  attr_accessor :discount, :total
  
  def initialize(discount = 0)
    @discount = discount
    @items = []
    @total = 0
  end
  
  def add_item(item, price, quantity = 1)
    self.total += price * quantity
    @items << item
  end
  
  def apply_discount
    if @discount = !0
    @total = @total.to_f * 1+(@discount / 100)
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."

    end
  end
  
  def cash_register_with_discount
    
  end
  
  def items
    item_names[]
  end
  
  def total
    @total = @total * 1+(@discount / 100)
  end
  
  def void_last_transaction
    # something about = last_transaction[]-1?
  end
  
end
