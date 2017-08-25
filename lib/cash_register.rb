class CashRegister #KISS, Susan!

  attr_accessor :total, :discount, :item, :price, :discount_price
  # attr_accessor :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
  end

  def total
    @total  #equals sum of all items
  end

  def add_item(title, price, quantity=1)
    item = {:title=>price}
    self.total+=price*quantity
  end

  def apply_discount
    @discount == (@discount/100.0)
    @discount_price == (@total * @discount)
    if self.discount == 0
      "There is no discount to apply."
    else
      "After the discount, the total comes to #{discount_price}."
     end
   end

  def items
    self.items = []#returns array of all items added
  end

  def void_last_transaction
    #subtracts the last transaction from the total
  end

end
