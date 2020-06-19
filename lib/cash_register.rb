class CashRegister
  attr_accessor :discount, :total, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @total += price*quantity
    @last_transaction = price*quantity
    quantity.times do
      @items << title
     end
  end

  def apply_discount
    @total -= 200 
      if @discount == 0
        return "There is no discount to apply."
      else
        return "After the discount, the total comes to $#{@total}."
      end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_transaction
  end
end
