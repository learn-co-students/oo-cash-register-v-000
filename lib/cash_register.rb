
class CashRegister

  attr_accessor :total, :discount, :items, :prices

  def initialize (discount=0)
    @total = 0
    @discount = discount
    @items = []
    @prices = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity= 1)
    quantity.times {@items << title}
    quantity.times {@prices << price}

    add_item= [title,price,quantity]
    
    if quantity == 0 
      self.total += price 

    elsif quantity > 0
      self.total += price*quantity

    end
    self.total
  end

  def apply_discount
    if self.discount == 0
      "There is no discount to apply."
    else 
      self.total -= ((self.discount / 100.0) * self.total)
    "After the discount, the total comes to $#{self.total.to_i}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    void = @prices.pop
    self.total -= void 
  end  

end
