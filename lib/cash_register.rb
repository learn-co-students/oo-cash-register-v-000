class CashRegister

  attr_accessor :total, :discount, :items

  def initialize (discount = nil)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = []

  end

  def add_item(title,price,quantity=1)
    @total += price*quantity
    @last_transaction << price*quantity
    quantity.times {@items << title}
  end

  def apply_discount
    if @discount
      @total -= @discount*10
      return "After the discount, the total comes to $#{@total}."
      else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @last_transaction.last
  end



end
