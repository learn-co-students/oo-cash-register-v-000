class CashRegister
  attr_accessor :total, :discount, :items, :last_item, :last_item

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = Array.new
  end

  def add_item(title , price, quantity = 1)
    @last_amnt = (price * quantity)
    @last_item = title
    quantity.times {@items << title}
    @total += (price * quantity)
  end

  def apply_discount
    if @discount != 0
      self.total = (total * (100 - discount)/100)
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @items = @items.delete(@last_item)
    @total = @total - @last_amnt
  end

end
