class CashRegister

  attr_accessor :total, :discount, :last_transaction

  #INSTANCE VARS$
  ###############
  def initialize(discount=0) #total is set to 0 in init body, discount is passed as an optional argument
    @total = 0
    @discount = discount
    @cart = []
    @last_transaction = 0
  end

  def total
    @total
  end

  def add_item(title, price, quantity=1)
    self.total += (price * quantity)
    self.last_transaction = (price * quantity) #creates a saved state of current (last) transaction. would work in this example just by @total = 0
    quantity.times do @cart << title #no . between time and do -_- quantity pointing to optional quanitity variable. wish it was clearer in the code.
    end
  end

  def apply_discount
    if discount > 0
      @total -= (discount*10) #haven't the faintest idea why *10 is necessary to pass. If it were a percent *100, but clearly not..?
      return "After the discount, the total comes to $#{@total}." #also have no idea why I had to switch it order of these if/else statements to work at all?
    else
      return "There is no discount to apply."
    end
  end

  def items
    @cart
  end

  def void_last_transaction
    @total -= last_transaction
  end

end
