class CashRegister #KISS, Susan!

  attr_accessor :total, :discount, :items
  # attr_accessor :items, :discount, :total, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
  end

  def total
    @total  #equals sum of all items
  end

  def add_item(title, price, quantity=0)
      #increases total
    #accepts optional quantity
    #include previous total
  end

  def apply_discount

  end

  def items
    #returns array of all items added
  end

  def void_last_transaction
    #subtracts the last transaction from the total
  end

end
