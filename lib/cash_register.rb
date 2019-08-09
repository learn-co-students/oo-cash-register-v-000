require 'pry'

class CashRegister
  attr_accessor :total, :discount, :shopping_cart, :items

  def initialize(discount = nil)
    @discount = discount || 0
    @total = 0
    @shopping_cart ||= {}
    @items = []
  end

  def total
    @total
  end

  def discount
    @discount
  end

  def items
    @items
  end

  def add_item(title,price, quantity = 1)
    i = 1
    while i <= quantity
      self.items << title
      i += 1
    end
    self.shopping_cart[title] ||= {} #creates hash if non-existent
    self.shopping_cart[title][price] = quantity #adds a pricepoint and quantity for the item at that pricepoint
    self.total = self.shopping_cart.collect {|title, prices| prices.keys[0] * prices.values[0]}.inject(:+) || 0#creates an array of price * quantity for each item and sums them, then updates @total
    self.shopping_cart
  end

  def apply_discount
    if self.discount > 0
      self.total -= self.total * (self.discount * 0.01)
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.shopping_cart.clear
    self.total = 0
  end


end

cash_register = CashRegister.new(20)
cash_register.add_item("macbook air", 1000)
cash_register.apply_discount
puts cash_register.items
cash_register.void_last_transaction
puts cash_register.shopping_cart
puts cash_register.total
