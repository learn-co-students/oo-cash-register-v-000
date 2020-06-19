class CashRegister
  attr_accessor :total, :discount, :last_transaction, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def add_item(item, price, quantity = 1)
    quantity.times do
      @items << item
    end
    @total += price * quantity
    # @last_transaction = @total
    @last_transaction = price * quantity
  end

  def apply_discount
   if @discount == 0
     "There is no discount to apply."
   else
     @total -= @total * @discount / 100
     "After the discount, the total comes to $#{total}."
   end
  end

  def void_last_transaction
    @total -= @last_transaction
  end
end
