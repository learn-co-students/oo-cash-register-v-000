class CashRegister 

  attr_accessor :total, :discount



  def initialize(discount = 0)
    @total = 0
    @discount = discount 
    @@all_items = [] 
    @@all_prices = []
  end

  def add_item(item, price, quantity = 1)
    @total += (price * quantity)  
    quantity.times{ @@all_prices << price }
    quantity.times{ @@all_items << item }
  end

  def apply_discount
    if discount != 0 
      self.total = (self.total * ((100.0 - discount.to_f)/100)).to_i
    else
      return "There is no discount to apply." 
    end
    "After the discount, the total comes to $#{self.total}."
  end


  def items 
    @@all_items
  end

  def void_last_transaction 
    self.total = self.total -  @@all_prices.last
  end



end