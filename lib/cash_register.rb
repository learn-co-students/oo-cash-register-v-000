
class CashRegister

  attr_accessor :total, :discount, :title, :quantity, :last_transaction

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    items = (title + " ") * quantity
    @items << items.split(" ")
    subtotal = (price * quantity)
    @last_transaction = subtotal
    @total = @total + subtotal
  end

  def apply_discount
    if @discount != nil
      @total = @total - (@total*@discount/100)
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items.flatten!
    @items
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end

end
