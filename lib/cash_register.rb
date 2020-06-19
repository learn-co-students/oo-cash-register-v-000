class CashRegister

  attr_reader   :discount#, :items
  attr_accessor :total   # NOT A GOOD IDEA IMHO

  def initialize(discount=0)
    @discount = discount
    @items = []
    @last_transaction = 0
    @total = 0
  end

  def add_item(title, price, qty=1)
    (1..qty).each { @items << title }
    @last_transaction = price * qty
    @total += @last_transaction
  end

  def apply_discount
    applied_discount = @total*@discount/100
    return "There is no discount to apply." if applied_discount == 0
    @total -= applied_discount
    "After the discount, the total comes to $#{@total}."
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_transaction
  end
end
