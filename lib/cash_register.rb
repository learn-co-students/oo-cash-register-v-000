class CashRegister
  attr_accessor :total, :discount, :all_items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @all_items = []
  end

  def add_item(item, price, quantity=1)
    @total += (price * quantity)
    count = 0
    @last_transaction = price
    while count < quantity
      count += 1
      @all_items << item
    end
  end

  def apply_discount
    if @discount > 0
      @total *= (1-@discount/100.to_f)
      successMessage = "After the discount, the total comes to $#{@total.to_int}."
    else
      successMessage = "There is no discount to apply."
    end
  end

  def items
    @all_items
  end

  def void_last_transaction
    @total -= @last_transaction
  end
end
