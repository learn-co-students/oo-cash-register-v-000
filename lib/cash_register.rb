class CashRegister
  attr_accessor :total, :discount, :last_transaction


  def initialize(discount=0, total=0)
    @total = total
    @discount = discount
    @all_items = []
  end

  def add_item(title, price, quantity=1)
    @total += price * quantity
    quantity.times {@all_items << (title)}
    @last_transaction = price * quantity
  end

  def apply_discount
    @total = @total * (100-@discount)/100
    @discount == 0 ? "There is no discount to apply." : "After the discount, the total comes to $#{@total}."
  end

  def items
    @all_items 
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end
