class CashRegister
  attr_accessor :total, :discount, :items, :previous_price

  def initialize(discount=0)
    @total = 0 
    @discount = discount
    @items = []
    @previous_price = 0

  end

  def add_item(title, price, quantity=1)
    price_increase = price * quantity
    self.total += price_increase
    quantity.times do
    self.items << title
    end
    self.previous_price = price_increase
  end


  def apply_discount
    if self.discount > 0
    self.total *=  1-self.discount/100.to_f
    self.total = self.total.to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
    
  end

  def void_last_transaction
    self.total -= self.previous_price
    self.items.pop

  end

end #ends CashRegister class
