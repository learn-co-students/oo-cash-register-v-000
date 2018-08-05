require 'pry'
class CashRegister

  attr_accessor :total, :discount, :items, :prices
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @prices = []
  end

    def add_item(title, price, quantity = 1)
      self.total += price * quantity
      count = 0
      while count < quantity do
        self.items << title
        self.prices << price
        count += 1
      end
    end

  def apply_discount
     if self.discount > 0
        self.total -= (self.total * (self.discount.to_f) / 100)
         "After the discount, the total comes to $#{self.total.to_i}."
     else
       "There is no discount to apply."
     end
  end
   def void_last_transaction
     self.total -= self.prices.last

   end
end
