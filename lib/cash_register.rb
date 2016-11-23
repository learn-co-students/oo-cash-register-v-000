
class CashRegister
  attr_accessor :total, :employee_discount, :items, :last_item
  def initialize(employee_discount = 0)
    @total = 0
    @employee_discount = employee_discount
    @items = []
    @last_item = ["item", "price", "quantity"]
  end

  def discount(discount = 20)
    self.employee_discount = discount
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    self.last_item[0] = title
    self.last_item[1] = price
    self.last_item[2] = quantity
    quantity.times do |i|
    	self.items << title
    end
  end

  def apply_discount
    if self.employee_discount == 0 || nil
      "There is no discount to apply."
    else
      self.total = self.total * (1.0 - self.employee_discount / 100.0)
      self.total = self.total.to_i
      "After the discount, the total comes to $#{self.total}."
    end
  end
  def item
  	self.items
  end
  def void_last_transaction
  	self.total = self.total - self.last_item[1]*self.last_item[2]
  end
end
