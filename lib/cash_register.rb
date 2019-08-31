require'pry'
class CashRegister
  attr_accessor :total, :discount, :items, :transaction_amt

  def initialize(discount=nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item (item, price, qty=1)
    @transaction_amt=(price*qty)
    @total=@total + (price*qty)
    while qty > 0
      @items<<item
      qty -=1
    end
  end

  def void_last_transaction
    @items.pop
    @total=@total-@transaction_amt
    #binding.pry
  end

  def apply_discount
    if !discount
      "There is no discount to apply."
    else
      @total = @total - (@discount*10)
      "After the discount, the total comes to $#{@total}."
      #binding.pry
    end
  end
end
