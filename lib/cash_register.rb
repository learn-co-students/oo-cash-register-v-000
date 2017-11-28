class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction



  def initialize(discount = 0)
    @items = []
    @total = 0
    @discount = discount
  end

  def add_item(item, price, quantity = 1)
    @total += price * quantity
    quantity.times do
      @items.push(item)
    end
    @last_transaction = price * quantity
  end

  def void_last_transaction
    @total -= @last_transaction
  end

  def apply_discount
     if @discount > 0
       @total = @total * (100 - @discount) / 100
       return "After the discount, the total comes to $#{@total}."
     else
       return "There is no discount to apply."
     end
  end

end
