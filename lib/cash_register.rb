
class CashRegister
  attr_accessor :discount, :total, :all_items, :all_prices
  def initialize(discount=0)
    @total = 0
    @discount = discount.to_f
    @all_items = []
    @all_prices = []
  end

  def add_item(food, price, quantity = 1)
    self.total += price * quantity
    quantity.times {self.all_prices << price}
    quantity.times {self.all_items << food }  
  end

  def apply_discount   
    self.total *= (100-self.discount)/100   
    self.discount == 0 ? "There is no discount to apply." : "After the discount, the total comes to $#{self.total.to_i}."
  end

  def items
    self.all_items
  end

  def void_last_transaction
    last_price = self.all_prices.pop
    self.total -= last_price
  end
end


    