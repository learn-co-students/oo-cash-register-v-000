class CashRegister

  attr_accessor :total
  attr_reader :items, :discount

  def initialize(discount=nil)
    @total = 0
    @transaction_history = []
    @items = []
    @discount = discount
  end
  
  def add_item(name,price,amt=1)
    self.total += price * amt
    amt.times {@items << name}
    @transaction_history << [price*amt,amt]
  end

  def apply_discount
    if @discount != nil
      self.total = self.total - (self.total * self.discount.to_f/100)
      "After the discount, the total comes to $#{self.total.truncate}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    last_trans = @transaction_history.pop
    self.total -= last_trans[0]
    last_trans[1].times {@items.pop}
  end
end
