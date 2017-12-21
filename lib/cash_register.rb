class CashRegister
  attr_accessor :total
  attr_reader :quantity, :price

  def initialize(employee_discount=nil)
    @total = 0
    @employee_discount = employee_discount
    @all = []
  end

  def discount
    @employee_discount
  end

  def add_item(title, price, quantity=nil)
    @quantity = quantity
    @price = price
    if quantity != nil
      self.total += price * quantity
      quantity.times {@all << title}
    else
      self.total += price
      @all << title
    end
  end

  def apply_discount
    if discount != nil
      self.total = self.total - (self.total * self.discount/100)
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @all
  end

  def void_last_transaction
    if quantity != nil
      quantity.times {self.total -= price}
    else
      self.total -= price
    end
  end
end
