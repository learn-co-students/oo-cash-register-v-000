class CashRegister
  attr_accessor :discount, :total, :items, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = 0
  end

  def add_item(title, price, quantity=1)
    self.total += price * quantity
    while quantity > 0 do 
      items << title
      quantity-=1
    end
    self.last_transaction = price 
  end

  def apply_discount
    if discount > 0
    self.total = total-(total*(discount*0.01))
     "After the discount, the total comes to $#{self.total.round}."
     else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    #remove the last transaction from the total
    self.total = self.total - self.last_transaction
  end
end
