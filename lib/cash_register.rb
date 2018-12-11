class CashRegister
  attr_accessor :total, :last_transaction, :discount
  @@all = []
  
  def initialize(discount = nil)
   @@all.clear
   @total = 0 
   @discount = discount
  end

  def total
    @total
  end

  def add_item(item, price, quantity=1)
    @last_transaction = (price * quantity).to_f
    @total += (price * quantity)
    quantity.times {@@all << item}
  end

  def apply_discount
    if @discount == nil 
      "There is no discount to apply."
    else
      @total.to_f 
      dollar_discount = @total * (@discount.to_f)/100
      self.total -= dollar_discount.to_i
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @@all
  end

  def void_last_transaction
    if @last_transaction != nil
      self.total -= @last_transaction
    end
  end

end
