class CashRegister
  attr_accessor :total, :discount, :previous_total



  def initialize(discount=0)
    @total=0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity=1)
      quantity.times do @items<<item end
      @previous_total=self.total
      self.total = self.total+(price*quantity)
  end

  def apply_discount
     if @discount>0
      self.total = self.total-(self.total*discount/100)
     "After the discount, the total comes to $#{self.total}."
   else
     "There is no discount to apply."
   end
  end

  def items
    @items
  end

  def void_last_transaction
    self.items.pop
    self.total = @previous_total
  end

end
