class CashRegister

  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = nil)
    if quantity.to_i > 0
      self.total += price * quantity
      items = title.split(",") * quantity
      items.flatten
      @items << items
    else
      self.total += price
      @items << title
    end
    @last_transaction = self.total
  end

  def apply_discount
    if @discount == nil
      return "There is no discount to apply."
    else
      percent_discount = @discount/100.to_f
      dollars_off = self.total * percent_discount
      self.total -= dollars_off
      return "After the discount, the total comes to $#{self.total.to_i}."
    end
  end

  def items
    @items.flatten
  end

  def void_last_transaction
    self.total -= @last_transaction
  end

end
