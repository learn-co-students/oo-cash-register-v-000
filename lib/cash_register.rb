class CashRegister

  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = 0
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @total += price*quantity
    quantity.times do
      @items << title
    end
    @last_transaction = price*quantity
  end

  def apply_discount
    @total = total - (discount/100.0)*@total
    if @discount == 0
      return "There is no discount to apply."
    else
      return "After the discount, the total comes to $#{total.to_i}."
    end
    @total
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end

end
