class CashRegister 

  attr_accessor :total, :discount   

  def initialize(discount = 0)
    @total = 0 
    @discount = discount 
    @items = [] 
    @prices = [] 
  end

  def add_item(title, price, quantity = 1)
    quantity.times { @items << title }
    quantity.times  { @prices << price }
    self.total += (price * quantity)
  end

  def apply_discount 
    if discount != 0
      discount_percent = (100 - discount)/100.to_f
      self.total = (@total * discount_percent).to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
   @items
  end

  def void_last_transaction
    self.total = total -  @prices.last
  end



end