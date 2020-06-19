class CashRegister
  attr_accessor :cash_register, :cash_register_with_discount, :total, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def discount
    @discount
  end

  def total
    @total
  end

  def add_item(item_name, price, quantity = 1)
    quantity.times do 
      @items << item_name
    end
    @total += (price * quantity)
    @last_transaction = price * quantity
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      discount = (100 - @discount)
      @total = (@total * discount) / 100
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end