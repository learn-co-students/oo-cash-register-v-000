class CashRegister
  attr_accessor :discount, :total, :last_transaction

  def initialize(discount=0)
    @total = 0
    @basket = []
    @discount = discount
    @last_transaction = {}
  end

  def add_item(title, price, quantity=1)
    @total += price*quantity
    quantity.times { @basket << title }
    @last_transaction[:title] = title
    @last_transaction[:price] = price
    @last_transaction[:quantity] = quantity
  end

  def apply_discount
    if @discount > 0
      @total = @total*(1 - (@discount.to_f/100))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @basket
  end

  def void_last_transaction
    @total -= @last_transaction[:price]*@last_transaction[:quantity]
  end
end
