class CashRegister

  attr_accessor :total, :discount, :items, :last_trasaction 
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantitiy = 1)
    self.last_trasaction = price * quantitiy
    self.total += self.last_trasaction
    quantitiy.times do |items|
      @items << item
    end
 
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
    @total -= (@total * discount)/100
    return "After the discount, the total comes to $#{@total}."
    
    end
  end

  def void_last_transaction
    @total = @total - @last_trasaction

  end

end

