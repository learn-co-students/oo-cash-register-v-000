class CashRegister
  attr_accessor :total, :discount, :last_transaction, :items 
  
  def initialize (discount=0)
    @total=0
    @discount = discount
    @items = []
  end
  
  def add_item (title, price, quantity=1)
    total_price = price * quantity
    self.last_transaction = total_price
    self.total += total_price
    if quantity > 1
      counter = 0
      while counter < quantity
        @items << title
        counter += 1
      end
    else
      @items << title
    end
  end
  
  def apply_discount
    if discount.to_i > 0
      self.total -= (total * discount / 100)
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end
    
  def void_last_transaction
    self.total -= self.last_transaction
  end
end
